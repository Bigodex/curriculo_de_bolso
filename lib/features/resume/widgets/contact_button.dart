import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:curriculo_de_bolso/core/constants/app_icons.dart';

class ContactButton extends StatelessWidget {
  const ContactButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          // TODO: abrir contato
        },

        borderRadius: BorderRadius.circular(16),

        child: Container(
          height: 48,

          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Colors.white24,
            ),
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SvgPicture.asset(
                AppIcons.envenlopeFull,
                width: 18,
                height: 18,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),

              const SizedBox(width: 8),

              const Text(
                "Contato",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}