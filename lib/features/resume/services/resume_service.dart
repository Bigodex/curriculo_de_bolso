import 'package:curriculo_de_bolso/features/resume/models/resume_model.dart';

class ResumeService {

  Future<ResumeCardModel> getResume() async {

    await Future.delayed(const Duration(milliseconds: 800));

    return ResumeCardModel(
      name: "Pedro Piola",
      title: "Desenvolvedor de Software",
      location: "Pato Branco - PR",
      photoUrl: "",
      experiences: const [

        ExperienceModel(
          period: "JAN 2022 — PRESENTE",
          role: "Senior Flutter Engineer",
          company: "Tech Solutions Global",
          description:
              "Liderança técnica de squads mobile, arquitetura Clean Architecture e implementação de CI/CD para apps escaláveis.",
        ),

        ExperienceModel(
          period: "JUN 2019 — DEZ 2021",
          role: "Mobile Developer",
          company: "App Craft Studio",
          description:
              "Desenvolvimento de interfaces complexas e integrações nativas com foco em performance e UX.",
        ),

        ExperienceModel(
          period: "JAN 2018 — MAI 2019",
          role: "Estagiário de Software",
          company: "StartUp X",
          description:
              "Auxílio na manutenção de sistemas legados e início da jornada com desenvolvimento cross-platform.",
        ),

      ],
    );
  }

}