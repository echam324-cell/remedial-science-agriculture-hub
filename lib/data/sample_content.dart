import 'package:flutter/material.dart';
import '../models/learning_subject.dart';

const learningSubjects = <LearningSubject>[
  LearningSubject(
    title: 'Science', subtitle: 'Explore the world around you', icon: Icons.science_outlined, color: Color(0xFF2876B8),
    topics: [
      LearningTopic(title: 'Microorganisms', description: 'Discover useful and harmful microscopic living things.', grade: 7, duration: '25 min'),
      LearningTopic(title: 'Photosynthesis', description: 'Learn how green plants make their own food.', grade: 7, duration: '30 min'),
      LearningTopic(title: 'Respiration in Living Things', description: 'Understand how organisms release energy from food.', grade: 7, duration: '30 min'),
      LearningTopic(title: 'Excretion and Homeostasis', description: 'Explore waste removal and how the body stays balanced.', grade: 9, duration: '35 min'),
      LearningTopic(title: 'The Circulatory System', description: 'Follow the movement of blood around the human body.', grade: 9, duration: '35 min'),
    ],
  ),
  LearningSubject(
    title: 'Agriculture', subtitle: 'Build practical farming knowledge', icon: Icons.agriculture_outlined, color: Color(0xFF39845B),
    topics: [
      LearningTopic(title: 'Soil and Soil Fertility', description: 'Identify soil components and ways to maintain fertility.', grade: 7, duration: '30 min'),
      LearningTopic(title: 'Farm Tools and Equipment', description: 'Recognise common tools and learn their safe uses.', grade: 7, duration: '25 min'),
      LearningTopic(title: 'Soil Erosion and Conservation', description: 'Explain causes of soil erosion and methods of control.', grade: 7, duration: '30 min'),
      LearningTopic(title: 'Crop Production Practices', description: 'Explore land preparation, planting and crop care.', grade: 8, duration: '30 min'),
      LearningTopic(title: 'West African Farming Systems', description: 'Compare common farming systems in the region.', grade: 9, duration: '35 min'),
    ],
  ),
];
