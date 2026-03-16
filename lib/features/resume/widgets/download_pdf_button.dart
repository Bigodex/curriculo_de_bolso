import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:curriculo_de_bolso/core/constants/app_icons.dart';

class DownloadPdfButton extends StatelessWidget {
  const DownloadPdfButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          // TODO: exportar PDF
        },

        borderRadius: BorderRadius.circular(16),

        child: Container(
          height: 48,

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SvgPicture.asset(
                AppIcons.download,
                width: 18,
                height: 18,
                colorFilter: const ColorFilter.mode(
                  Colors.black,
                  BlendMode.srcIn,
                ),
              ),

              const SizedBox(width: 8),

              const Text(
                "PDF",
                style: TextStyle(
                  color: Colors.black,
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