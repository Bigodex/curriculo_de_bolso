import 'package:flutter/material.dart';

/// =======================================================
/// COVER IMAGE
/// -------------------------------------------------------
/// Widget responsável pela imagem de capa do currículo.
///
/// A capa ocupa toda a largura da tela e possui altura fixa.
/// Pode receber imagem de asset, network ou gradiente.
///
/// Este widget fica separado para facilitar reutilização
/// e manutenção.
/// =======================================================
class CoverImage extends StatelessWidget {
  const CoverImage({
    super.key,
    this.imageUrl,
  });

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: 16,
        right: 16,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: SizedBox(
          width: double.infinity,
          height: 130,
          child: imageUrl != null
              ? Image.network(
                  imageUrl!,
                  fit: BoxFit.cover,
                )
              : Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 255, 255, 255),
                        Color.fromARGB(255, 138, 138, 138),
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}