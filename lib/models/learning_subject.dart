import 'package:flutter/material.dart';

class LearningSubject {
  const LearningSubject({required this.title, required this.subtitle, required this.icon, required this.color, required this.topics});
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final List<LearningTopic> topics;
}

class LearningTopic {
  const LearningTopic({required this.title, required this.description, required this.grade, required this.duration});
  final String title;
  final String description;
  final int grade;
  final String duration;
}
