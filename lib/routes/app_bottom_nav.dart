// =======================================================
// FLUTTER IMPORT
// =======================================================

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

// =======================================================
// APP ICONS
// =======================================================

import '../core/constants/app_icons.dart';

// =======================================================
// APP COLORS
// =======================================================

import '../core/theme/app_colors.dart';

// =======================================================
// APP BOTTOM NAV
// -------------------------------------------------------
// Barra de navegação inferior fixa do aplicativo.
// =======================================================

class AppBottomNav extends StatelessWidget {
  final Widget child;

  const AppBottomNav({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ===================================================
      // CONTEÚDO DA TELA
      // ===================================================

      body: child,

      // ===================================================
      // MENU INFERIOR
      // ===================================================

      bottomNavigationBar: BottomNavigationBar(
        // -------------------------------------------------
        // COR DO BACKGROUND
        // -------------------------------------------------

        backgroundColor: AppColors.black,

        // -------------------------------------------------
        // CORES DOS ÍCONES
        // -------------------------------------------------

        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,

        // -------------------------------------------------
        // REMOVER LABEL
        // -------------------------------------------------

        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,

        // -------------------------------------------------
        // ITEM ATUAL
        // -------------------------------------------------

        currentIndex: _calculateIndex(context),

        // -------------------------------------------------
        // NAVEGAÇÃO
        // -------------------------------------------------

        onTap: (index) {
          switch (index) {
            case 0:
              context.go('/card');
              break;

            case 1:
              context.go('/create');
              break;

            case 2:
              context.go('/profile');
              break;
          }
        },

        // -------------------------------------------------
        // ITENS DO MENU
        // -------------------------------------------------

        items: [
          // CARTEIRINHA
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.id,
              width: 22,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
            label: "Carteirinha",
          ),

          // ADICIONAR
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.plus,
              width: 22,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
            label: "Adicionar",
          ),

          // PERFIL
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.profile,
              width: 18,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
            label: "Perfil",
          ),
        ],
      ),
    );
  }

  // =======================================================
  // CALCULA QUAL MENU ESTÁ ATIVO
  // =======================================================

  int _calculateIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();

    if (location.startsWith('/create')) {
      return 1;
    }

    if (location.startsWith('/profile')) {
      return 2;
    }

    return 0;
  }
}