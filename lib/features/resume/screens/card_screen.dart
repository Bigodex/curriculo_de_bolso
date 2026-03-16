import 'package:curriculo_de_bolso/core/constants/app_texts.dart';
import 'package:curriculo_de_bolso/core/theme/app_colors.dart';
import 'package:curriculo_de_bolso/features/resume/widgets/cover_wallet.dart';
import 'package:flutter/material.dart';

import '../widgets/header.dart';
import '../widgets/profile_avatar.dart';
import '../widgets/profile_info.dart';
import '../widgets/about_item.dart';
import '../widgets/contact_button.dart';
import '../widgets/download_pdf_button.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),

              child: ClipRRect(
                borderRadius: BorderRadius.circular(28),

                child: Container(
                  color: const Color(0xFF111111),

                  child: Column(
                    children: [

                      /// HEADER
                      const Header(),

                      /// CAPA + AVATAR SOBREPOSTO
                      Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [

                          const CoverWallet(),

                          Positioned(
                            bottom: -35,
                            child: ProfileAvatar(
                              imageUrl: '',
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 40),

                      /// PROFILE INFO
                      const ProfileInfo(
                        name: "Pedro Piola",
                        title: "Desenvolvedor Full Stack",
                        location: "Pato Branco - PR",
                      ),

                      const SizedBox(height: 14),

                      /// ABOUT
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: AboutItem(
                          iconPath: '',
                          value:
                              "Desenvolvedor focado em criar soluções modernas, minimalistas e de alto desempenho para web. Especialista em arquiteturas escaláveis.",
                        ),
                      ),

                      const SizedBox(height: 14),

                      /// CONTACT GRID
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),

                        child: Row(
                          children: [

                            Expanded(
                              child: ContactButton(
                                icon: Icons.mail,
                                label: AppTexts.email,
                                value: "pedro.piola@email.com",
                              ),
                            ),

                            const SizedBox(width: 10),

                            Expanded(
                              child: ContactButton(
                                icon: Icons.phone_outlined,
                                label: AppTexts.phone,
                                value: "(11) 99999-9999",
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 10),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),

                        child: Row(
                          children: [

                            Expanded(
                              child: ContactButton(
                                icon: Icons.location_on_outlined,
                                label: AppTexts.location,
                                value: "São Paulo, SP",
                              ),
                            ),

                            const SizedBox(width: 10),

                            Expanded(
                              child: ContactButton(
                                icon: Icons.cake_outlined,
                                label: AppTexts.birth,
                                value: "01 Jan 1990",
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 16),

                      /// ACTION BUTTONS
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),

                        child: Row(
                          children: [

                            Expanded(
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                icon: const Icon(Icons.share),
                                label: Text(AppTexts.share),
                              ),
                            ),

                            const SizedBox(width: 10),

                            const DownloadPdfButton(),
                          ],
                        ),
                      ),

                      const SizedBox(height: 18),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}