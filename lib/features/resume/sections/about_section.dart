import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        /// TÍTULO
        const Text(
          "Resumo Profissional",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(height: 10),

        /// TEXTO SOBRE
        const Text(
          "Desenvolvedor apaixonado por criar soluções digitais minimalistas e eficientes. "
          "Com experiência em tecnologias web e mobile, focado em performance e UX.",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 15,
            height: 1.6,
          ),
        ),

        const SizedBox(height: 16),
      ],
    );
  }
}