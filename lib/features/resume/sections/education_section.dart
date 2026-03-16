import 'package:curriculo_de_bolso/features/resume/models/education_model.dart';
import 'package:flutter/material.dart';
import '../widgets/education_item.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {

    final educations = [

      const EducationModel(
        period: "2021 — 2025",
        course: "Engenharia de Software",
        institution: "Universidade Tecnológica Federal",
        description:
            "Formação focada em arquitetura de software, desenvolvimento mobile e engenharia de sistemas.",
      ),

      const EducationModel(
        period: "2018 — 2020",
        course: "Técnico em Informática",
        institution: "Instituto Federal",
        description:
            "Base sólida em programação, redes e desenvolvimento de sistemas.",
      ),
    ];

    return Column(
      children: List.generate(
        educations.length,
        (index) => EducationItem(
          education: educations[index],
          isLast: index == educations.length - 1,
        ),
      ),
    );
  }
}