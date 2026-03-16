import 'package:flutter/material.dart';
import '../widgets/project_item.dart';
import '../models/project_model.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {

    final projects = [

      const ProjectModel(
        name: "Currículo de Bolso",
        description:
            "Aplicativo para compartilhar currículo digital em formato de carteirinha.",
        technologies: ["Flutter", "Riverpod", "Firebase"],
        link: "github.com/pedro/curriculo",
      ),

      const ProjectModel(
        name: "Rolezin",
        description:
            "Plataforma social para eventos universitários.",
        technologies: ["Flutter", "Node.js", "MongoDB"],
        link: "github.com/pedro/rolezin",
      ),
    ];

    return Column(
      children: projects
          .map((project) => ProjectItem(project: project))
          .toList(),
    );
  }
}