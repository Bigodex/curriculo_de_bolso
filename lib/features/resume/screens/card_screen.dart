import 'package:curriculo_de_bolso/features/resume/widgets/header.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),

          child: Column(
            children: [

            /// HEADER
            const Header(),
            
              const SizedBox(height: 20),
              // FOTO
              const CircleAvatar(
                radius: 55,
                backgroundImage: NetworkImage(
                  "https://i.pravatar.cc/300",
                ),
              ),

              const SizedBox(height: 40),

              // NOME
              const Text(
                "GABRIEL\nSANTOS",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  height: 1.1,
                ),
              ),

              const SizedBox(height: 16),

              // PROFISSÃO
              const Text(
                "PRODUCT DESIGNER • SÃO PAULO, BR",
                style: TextStyle(
                  color: Colors.white54,
                  letterSpacing: 2,
                  fontSize: 12,
                ),
              ),

              const SizedBox(height: 30),

              // LINHA
              Container(
                width: 40,
                height: 1,
                color: Colors.white24,
              ),

              const SizedBox(height: 20),

              // ID
              const Text(
                "ID: 7749-X",
                style: TextStyle(
                  color: Colors.white70,
                  letterSpacing: 2,
                  fontSize: 14,
                ),
              ),

              const SizedBox(height: 60),

              // GRID INFORMAÇÕES
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [

                  InfoItem(
                    title: "STATUS",
                    value: "PREMIUM",
                  ),

                  InfoItem(
                    title: "MEMBRO DESDE",
                    value: "2021",
                  ),

                ],
              ),

              const SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [

                  InfoItem(
                    title: "VERIFICADO",
                    value: "SIM",
                  ),

                  InfoItem(
                    title: "NÍVEL",
                    value: "SÊNIOR",
                  ),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class InfoItem extends StatelessWidget {
  final String title;
  final String value;

  const InfoItem({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(
          title,
          style: const TextStyle(
            color: Colors.white38,
            letterSpacing: 2,
            fontSize: 11,
          ),
        ),

        const SizedBox(height: 6),

        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),

      ],
    );
  }
}