// =======================================================
// GO ROUTER
// -------------------------------------------------------
// Configuração central de navegação do aplicativo.
// Utiliza ShellRoute para manter o menu inferior fixo.
// =======================================================

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// =======================================================
// SCREENS
// =======================================================

import '../features/resume/screens/profile_screen.dart';
import '../features/resume/screens/create_resume_screen.dart';
import '../features/resume/screens/card_screen.dart';

// =======================================================
// BOTTOM NAV UI
// =======================================================

import 'app_bottom_nav.dart';

// =======================================================
// NAVIGATOR KEYS
// =======================================================

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

// =======================================================
// ROUTER
// =======================================================

final GoRouter appRouter = GoRouter(

  navigatorKey: _rootNavigatorKey,

  // -----------------------------------------------------
  // ROTA INICIAL
  // -----------------------------------------------------

  initialLocation: '/card',

  // -----------------------------------------------------
  // ROTAS
  // -----------------------------------------------------

  routes: [

    ShellRoute(

      navigatorKey: _shellNavigatorKey,

      builder: (context, state, child) {
        return AppBottomNav(child: child);
      },

      routes: [

        // -----------------------------------------------
        // CARTEIRINHA
        // -----------------------------------------------

        GoRoute(
          path: '/card',
          name: 'card',
          builder: (context, state) => const CardScreen(),
        ),

        // -----------------------------------------------
        // ADICIONAR CURRÍCULO
        // -----------------------------------------------

        GoRoute(
          path: '/create',
          name: 'create',
          builder: (context, state) => const CreateResumeScreen(),
        ),

        // -----------------------------------------------
        // PROFILE
        // -----------------------------------------------

        GoRoute(
          path: '/profile',
          name: 'profile',
          builder: (context, state) => const ProfileScreen(),
        ),

      ],
    ),
  ],
);