import 'package:curriculo_de_bolso/features/resume/sections/about_section.dart';
import 'package:curriculo_de_bolso/features/resume/sections/education_section.dart';
import 'package:curriculo_de_bolso/features/resume/sections/experience_section.dart';
import 'package:curriculo_de_bolso/features/resume/sections/projects_section.dart';
import 'package:curriculo_de_bolso/features/resume/sections/skills_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_icons.dart';
import '../../../core/constants/app_texts.dart';

import '../providers/resume_provider.dart';

import '../widgets/header.dart';
import '../widgets/cover_image.dart';
import '../widgets/profile_avatar.dart';
import '../widgets/profile_info.dart';
import '../widgets/resume_section_accordion.dart';

import '../widgets/download_pdf_button.dart';
import '../widgets/contact_button.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      ref.read(resumeProvider.notifier).loadResume();
    });
  }

  @override
  Widget build(BuildContext context) {
    final resume = ref.watch(resumeProvider);

    return Scaffold(
      backgroundColor: Colors.black,

      body: SafeArea(
        child: Column(
          children: [

            /// HEADER
            const Header(),

            /// CONTEÚDO
            Expanded(
              child: resume == null
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : SingleChildScrollView(
                      child: Column(
                        children: [

                          /// CAPA + AVATAR
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              const CoverImage(),
                              ProfileAvatar(
                                imageUrl: resume.photoUrl,
                              ),
                            ],
                          ),

                          /// INFO DO PERFIL
                          ProfileInfo(
                            name: resume.name,
                            title: resume.title,
                            location: resume.location,
                          ),

                          const SizedBox(height: 20),

                          /// BOTÕES
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [

                                DownloadPdfButton(),

                                SizedBox(width: 12),

                                ContactButton(label: null, value: '', icon: null,),
                              ],
                            ),
                          ),

                          const SizedBox(height: 30),

                          /// ACCORDIONS

                          ResumeSectionAccordion(
                            title: "Sobre",
                            iconPath: AppIcons.profileFull,
                            child: const AboutSection(),
                          ),

                          ResumeSectionAccordion(
                            title: AppTexts.experience,
                            iconPath: AppIcons.briefcaseFull,
                            child: const ExperienceSection(),
                          ),

                          ResumeSectionAccordion(
                            title: AppTexts.education,
                            iconPath: AppIcons.capFull,
                            child: const EducationSection(),
                          ),

                          ResumeSectionAccordion(
                            title: AppTexts.skills,
                            iconPath: AppIcons.codeFull,
                            child: const SkillsSection(),
                          ),

                          ResumeSectionAccordion(
                            title: AppTexts.projects,
                            iconPath: AppIcons.folderFull,
                            child: const ProjectsSection(),
                          ),

                          const SizedBox(height: 40),
                        ],
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}