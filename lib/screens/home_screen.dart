import 'package:flutter/material.dart';
import '../data/sample_content.dart';
import '../models/learning_subject.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedGrade = 7;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Row(children: [
          Icon(Icons.menu_book_rounded, size: 25), SizedBox(width: 9),
          Expanded(child: Text('Remedial Learning Hub', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18))),
        ]),
        actions: [IconButton(tooltip: 'About this app', onPressed: () => _showAbout(context), icon: const Icon(Icons.info_outline_rounded))],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(18, 8, 18, 28),
          children: [
            const _WelcomeBanner(),
            const SizedBox(height: 24),
            Text('Choose your grade', style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800, color: const Color(0xFF17372D))),
            const SizedBox(height: 12),
            Wrap(spacing: 10, children: [7, 8, 9].map((grade) => ChoiceChip(
              label: Text('Grade $grade'), selected: selectedGrade == grade,
              onSelected: (_) => setState(() => selectedGrade = grade), showCheckmark: false,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            )).toList()),
            const SizedBox(height: 24),
            Text('Your subjects', style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800, color: const Color(0xFF17372D))),
            const SizedBox(height: 12),
            ...learningSubjects.map((subject) => Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: _SubjectCard(subject: subject, grade: selectedGrade, onTopicTap: (topic) => _showTopic(context, subject, topic)),
            )),
            const SizedBox(height: 8),
            const _OfflineNote(),
          ],
        ),
      ),
    );
  }

  void _showTopic(BuildContext context, LearningSubject subject, LearningTopic topic) {
    showModalBottomSheet<void>(
      context: context, isScrollControlled: true, showDragHandle: true,
      builder: (context) => Padding(
        padding: const EdgeInsets.fromLTRB(22, 8, 22, 30),
        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(subject.title.toUpperCase(), style: TextStyle(color: subject.color, fontWeight: FontWeight.w800, letterSpacing: 1.1)),
          const SizedBox(height: 8),
          Text(topic.title, style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w800)),
          const SizedBox(height: 12), Text(topic.description), const SizedBox(height: 18),
          Row(children: [const Icon(Icons.school_outlined, size: 18), const SizedBox(width: 6), Text('Grade ${topic.grade}'), const SizedBox(width: 20), const Icon(Icons.schedule_outlined, size: 18), const SizedBox(width: 6), Text(topic.duration)]),
          const SizedBox(height: 20),
          const Text('Detailed learning notes, illustrations and practice activities for this topic will be added in the next content phase.'),
          const SizedBox(height: 18),
          SizedBox(width: double.infinity, child: FilledButton(onPressed: () => Navigator.pop(context), child: const Text('Back to subjects'))),
        ]),
      ),
    );
  }

  void _showAbout(BuildContext context) {
    showAboutDialog(
      context: context, applicationName: 'Remedial Science & Agriculture Hub – Gambia',
      applicationVersion: '1.0.0', applicationLegalese: 'Supporting learning for Grades 7–9.',
      children: const [Text('A student-friendly learning companion for Science and Agriculture, designed with offline access in mind.')],
    );
  }
}

class _WelcomeBanner extends StatelessWidget {
  const _WelcomeBanner();
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(22),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(24),
      gradient: const LinearGradient(colors: [Color(0xFF145B45), Color(0xFF247A59)], begin: Alignment.topLeft, end: Alignment.bottomRight),
    ),
    child: const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('LEARN • PRACTISE • GROW', style: TextStyle(color: Color(0xFFFFD987), fontSize: 11, fontWeight: FontWeight.w900, letterSpacing: 1.5)),
      SizedBox(height: 12),
      Text('Your learning journey\nstarts here!', style: TextStyle(color: Colors.white, fontSize: 25, height: 1.15, fontWeight: FontWeight.w900)),
      SizedBox(height: 10),
      Text('Build confidence in Science and Agriculture, one lesson at a time.', style: TextStyle(color: Colors.white, height: 1.4)),
    ]),
  );
}

class _SubjectCard extends StatelessWidget {
  const _SubjectCard({required this.subject, required this.grade, required this.onTopicTap});
  final LearningSubject subject;
  final int grade;
  final ValueChanged<LearningTopic> onTopicTap;

  @override
  Widget build(BuildContext context) {
    final topics = subject.topics.where((topic) => topic.grade == grade);
    return Card(child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          Container(width: 46, height: 46, decoration: BoxDecoration(color: subject.color.withValues(alpha: 0.12), borderRadius: BorderRadius.circular(14)), child: Icon(subject.icon, color: subject.color, size: 26)),
          const SizedBox(width: 12),
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(subject.title, style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
            Text(subject.subtitle, style: Theme.of(context).textTheme.bodySmall),
          ])),
          Icon(Icons.arrow_forward_ios_rounded, size: 16, color: subject.color),
        ]),
        const SizedBox(height: 15),
        if (topics.isEmpty) const Text('New lessons for this grade are coming soon.')
        else ...topics.map((topic) => ListTile(
          contentPadding: EdgeInsets.zero, dense: true,
          title: Text(topic.title, style: const TextStyle(fontWeight: FontWeight.w600)),
          subtitle: Text(topic.duration), trailing: const Icon(Icons.chevron_right_rounded),
          onTap: () => onTopicTap(topic),
        )),
      ]),
    ));
  }
}

class _OfflineNote extends StatelessWidget {
  const _OfflineNote();
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(14),
    decoration: BoxDecoration(color: const Color(0xFFEAF2EC), borderRadius: BorderRadius.circular(16)),
    child: const Row(children: [
      Icon(Icons.wifi_off_rounded, color: Color(0xFF286548)), SizedBox(width: 10),
      Expanded(child: Text(
        'Designed to make learning resources available offline. More downloadable lessons are coming soon.',
        style: TextStyle(color: Color(0xFF28513D), height: 1.35),
      )),
    ]),
  );
}
