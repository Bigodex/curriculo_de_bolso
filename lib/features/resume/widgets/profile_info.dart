import 'package:curriculo_de_bolso/core/constants/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// =======================================================
/// PROFILE INFO
/// -------------------------------------------------------
/// Exibe as informações principais do currículo:
///
/// • Nome
/// • Profissão / Cargo
/// • Localização
///
/// Usado logo abaixo da foto de perfil.
/// =======================================================
class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
    required this.name,
    required this.title,
    required this.location,
  });

  final String name;
  final String title;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        const SizedBox(height: 50),

        /// Nome
        Text(
          name,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        const SizedBox(height: 6),

        /// Profissão
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white70,
          ),
        ),

        const SizedBox(height: 10),

        /// Localização
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            /// MENU
            SvgPicture.asset(
              AppIcons.pin,
              width: 18,
              height: 18,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),

            const SizedBox(width: 4),

            Text(
              location,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),

          ],
        ),

      ],
    );
  }
}