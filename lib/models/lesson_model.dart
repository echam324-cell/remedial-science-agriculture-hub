class LessonSection {
  const LessonSection({required this.heading, required this.body, this.localExample});
  final String heading;
  final String body;
  final String? localExample;
}

class QuizQuestion {
  const QuizQuestion({required this.question, required this.options, required this.correctIndex, required this.explanation});
  final String question;
  final List<String> options;
  final int correctIndex;
  final String explanation;
}

class LearningLesson {
  const LearningLesson({
    required this.title,
    required this.subject,
    required this.grade,
    required this.duration,
    required this.introduction,
    required this.objectives,
    required this.keyTerms,
    required this.sections,
    required this.activity,
    required this.homework,
    required this.questions,
  });

  final String title;
  final String subject;
  final int grade;
  final String duration;
  final String introduction;
  final List<String> objectives;
  final List<String> keyTerms;
  final List<LessonSection> sections;
  final String activity;
  final List<String> homework;
  final List<QuizQuestion> questions;
}
