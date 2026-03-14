// =======================================================
// GO ROUTER
// -------------------------------------------------------
// Configuração central de navegação do aplicativo.
// Utiliza ShellRoute para manter o menu inferior fixo.
// =======================================================

import 'package:go_router/go_router.dart';


// =======================================================
// SCREENS
// =======================================================

import '../features/resume/screens/home_screen.dart';
import '../features/resume/screens/create_resume_screen.dart';


// =======================================================
// BOTTOM NAV UI
// =======================================================

import 'app_bottom_nav.dart';


// =======================================================
// ROUTER
// =======================================================

final GoRouter appRouter = GoRouter(

  // -----------------------------------------------------
  // ROTA INICIAL
  // -----------------------------------------------------

  initialLocation: '/',


  // -----------------------------------------------------
  // ROTAS
  // -----------------------------------------------------

  routes: [

    ShellRoute(

      // -------------------------------------------------
      // WRAPPER DO MENU
      // -------------------------------------------------

      builder: (context, state, child) {

        return AppBottomNav(
          child: child,
        );
      },

      routes: [

        // -----------------------------------------------
        // HOME
        // -----------------------------------------------

        GoRoute(
          path: '/',
          name: 'home',
          builder: (context, state) => const HomeScreen(),
        ),


        // -----------------------------------------------
        // CRIAR CURRÍCULO
        // -----------------------------------------------

        GoRoute(
          path: '/create',
          name: 'create',
          builder: (context, state) => const CreateResumeScreen(),
        ),

      ],
    ),
  ],
);