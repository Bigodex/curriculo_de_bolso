import 'package:flutter/material.dart';

/// =======================================================
/// PROFILE AVATAR
/// -------------------------------------------------------
/// Avatar circular do usuário exibido sobre a imagem
/// de capa do currículo.
///
/// Se imageUrl estiver vazio, usa imagem mock do assets.
/// =======================================================
class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -40,
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 3,
            ),
          ),
          child: ClipOval(
            child: imageUrl.isEmpty
                ? Image.asset(
                    "assets/img/profile_pic.jpg",
                    fit: BoxFit.cover,
                  )
                : Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
          ),
        ),
      ),
    );
  }
}