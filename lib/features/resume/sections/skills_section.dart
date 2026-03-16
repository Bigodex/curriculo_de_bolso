import 'package:flutter/material.dart';
import '../models/skill_model.dart';
import '../widgets/skill_item.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {

    final skills = [

      const SkillModel(
        name: "Figma",
        level: "Avançado",
        progress: 0.9,
      ),

      const SkillModel(
        name: "Photoshop",
        level: "Avançado",
        progress: 0.8,
      ),

      const SkillModel(
        name: "Excel",
        level: "Básico",
        progress: 0.3,
      ),

    ];

    return Column(
      children: skills
          .map((skill) => SkillItem(skill: skill))
          .toList(),
    );
  }
}