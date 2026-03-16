import 'package:flutter/material.dart';

/// =======================================================
/// COVER WALLET
/// -------------------------------------------------------
/// Capa principal da carteirinha.
///
/// • Não possui margens
/// • Ocupa toda a largura do container
/// • Possui radius apenas no topo
///
/// Pode receber:
/// • imagem de network
/// • gradiente padrão
///
/// Ideal para layout estilo Apple Wallet / cartão digital.
/// =======================================================

class CoverWallet extends StatelessWidget {
  const CoverWallet({
    super.key,
    this.imageUrl,
  });

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(30),
      ),
      child: SizedBox(
        width: double.infinity,
        height: 140,
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
                      Color.fromARGB(255, 212, 212, 212),
                      Color.fromARGB(255, 201, 201, 201),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}