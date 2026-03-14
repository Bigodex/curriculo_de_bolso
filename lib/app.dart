// =======================================================
// FLUTTER IMPORT
// =======================================================

import 'package:flutter/material.dart';


// =======================================================
// ROUTER
// =======================================================

import 'routes/app_router.dart';


// =======================================================
// THEME
// =======================================================

import 'core/theme/app_theme.dart';


// =======================================================
// APP ROOT
// -------------------------------------------------------
// Classe raiz do aplicativo.
//
// Responsável por:
//
// • configurar navegação
// • configurar tema
// • configurar comportamento global
// =======================================================

class CurriculoDeBolsoApp extends StatelessWidget {
  const CurriculoDeBolsoApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(

      // ===================================================
      // NOME DO APP
      // ===================================================

      title: 'Currículo de Bolso',


      // ===================================================
      // REMOVER DEBUG BANNER
      // ===================================================

      debugShowCheckedModeBanner: false,


      // ===================================================
      // THEME GLOBAL
      // ===================================================

      theme: AppTheme.lightTheme,


      // ===================================================
      // ROUTER
      // ===================================================

      routerConfig: appRouter,
    );
  }
}