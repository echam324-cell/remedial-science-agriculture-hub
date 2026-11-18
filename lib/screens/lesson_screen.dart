import 'package:flutter/material.dart';
import '../models/lesson_model.dart';

class LessonScreen extends StatefulWidget {
  const LessonScreen({super.key, required this.lesson});
  final LearningLesson lesson;

  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  final Map<int, int> _answers = {};
  bool _submitted = false;

  int get _score => _answers.entries.where((entry) =>
      widget.lesson.questions[entry.key].correctIndex == entry.value).length;

  @override
  Widget build(BuildContext context) {
    final lesson = widget.lesson;
    return Scaffold(
      appBar: AppBar(title: Text(lesson.subject),),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(18, 8, 18, 32),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              gradient: const LinearGradient(colors: [Color(0xFF145B45), Color(0xFF247A59)]),
            ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('GRADE ${lesson.grade} • ${lesson.duration.toUpperCase()}',
                style: const TextStyle(color: Color(0xFFFFD987), fontWeight: FontWeight.w800, letterSpacing: 1)),
              const SizedBox(height: 10),
              Text(lesson.title, style: const TextStyle(color: Colors.white, fontSize: 26, height: 1.15, fontWeight: FontWeight.w900)),
              const SizedBox(height: 12),
              Text(lesson.introduction, style: const TextStyle(color: Colors.white, height: 1.5)),
            ]),
          ),
          const SizedBox(height: 22),
          _sectionTitle('Learning objectives'),
          ...lesson.objectives.map((item) => _bullet(item)),
          const SizedBox(height: 18),
          _sectionTitle('Key terms'),
          ...lesson.keyTerms.map((item) => Padding(
            padding: const EdgeInsets.only(bottom: 9),
            child: Text(item, style: const TextStyle(height: 1.45)),
          )),
          const SizedBox(height: 12),
          _sectionTitle('Lesson notes'),
          ...lesson.sections.map((section) => Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(section.heading, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: Color(0xFF176B50))),
                const SizedBox(height: 8),
                Text(section.body, style: const TextStyle(height: 1.55)),
                if (section.localExample != null) ...[
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(color: const Color(0xFFEAF2EC), borderRadius: BorderRadius.circular(12)),
                    child: Text('Gambian example: ${section.localExample}', style: const TextStyle(height: 1.45)),
                  )
                ]
              ]),
            ),
          )),
          const SizedBox(height: 8),
          _sectionTitle('Class activity'),
          Text(lesson.activity, style: const TextStyle(height: 1.55)),
          const SizedBox(height: 18),
          _sectionTitle('Homework'),
          ...lesson.homework.asMap().entries.map((entry) => _bullet('${entry.key + 1}. ${entry.value}')),
          const SizedBox(height: 22),
          _sectionTitle('Check your understanding'),
          const Text('Choose one answer for each question, then submit to see your score and explanations.', style: TextStyle(height: 1.45)),
          const SizedBox(height: 12),
          ...lesson.questions.asMap().entries.map((entry) => _questionCard(entry.key, entry.value)),
          const SizedBox(height: 12),
          FilledButton.icon(
            onPressed: _answers.length == lesson.questions.length ? () => setState(() => _submitted = true) : null,
            icon: const Icon(Icons.check_circle_outline),
            label: const Text('Submit answers'),
          ),
          if (_submitted) ...[
            const SizedBox(height: 14),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: const Color(0xFFEAF2EC), borderRadius: BorderRadius.circular(16)),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('Your score: $_score / ${lesson.questions.length}', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900, color: Color(0xFF176B50))),
                const SizedBox(height: 8),
                ...lesson.questions.asMap().entries.map((entry) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text('${entry.key + 1}. ${entry.value.explanation}', style: const TextStyle(height: 1.4)),
                )),
                TextButton(onPressed: () => setState(() { _answers.clear(); _submitted = false; }), child: const Text('Try again')),
              ]),
            ),
          ],
        ],
      ),
    );
  }

  Widget _sectionTitle(String title) => Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900, color: Color(0xFF17372D))),
  );

  Widget _bullet(String text) => Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(padding: EdgeInsets.only(top: 7), child: Icon(Icons.circle, size: 7, color: Color(0xFF39845B))),
      const SizedBox(width: 10),
      Expanded(child: Text(text, style: const TextStyle(height: 1.45))),
    ]),
  );

  Widget _questionCard(int index, QuizQuestion question) => Card(
    margin: const EdgeInsets.only(bottom: 12),
    child: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('${index + 1}. ${question.question}', style: const TextStyle(fontWeight: FontWeight.w800, height: 1.4)),
        const SizedBox(height: 8),
        ...question.options.asMap().entries.map((option) => RadioListTile<int>(
          contentPadding: EdgeInsets.zero,
          dense: true,
          value: option.key,
          groupValue: _answers[index],
          onChanged: _submitted ? null : (value) => setState(() => _answers[index] = value!),
          title: Text(option.value),
        )),
        if (_submitted)
          Text(
            _answers[index] == question.correctIndex ? 'Correct' : 'Correct answer: ${question.options[question.correctIndex]}',
            style: TextStyle(fontWeight: FontWeight.w800, color: _answers[index] == question.correctIndex ? Colors.green.shade700 : Colors.deepOrange.shade700),
          ),
      ]),
    ),
  );
}
