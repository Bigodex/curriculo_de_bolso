// =======================================================
// FLUTTER IMPORTS
// =======================================================

import 'package:flutter/material.dart';


// =======================================================
// RIVERPOD IMPORT
// =======================================================

import 'package:flutter_riverpod/flutter_riverpod.dart';


// =======================================================
// ROUTER DO APLICATIVO
// =======================================================

import 'routes/app_router.dart';


// =======================================================
// THEME GLOBAL
// =======================================================

import 'core/theme/app_theme.dart';


// =======================================================
// MAIN - PONTO DE ENTRADA DO APLICATIVO
// =======================================================

void main() {
  runApp(
    const ProviderScope(
      child: CurriculoDeBolsoApp(),
    ),
  );
}


// =======================================================
// APP ROOT
// -------------------------------------------------------
// Classe principal do aplicativo.
// Aqui configuramos:
//
// • Router
// • Theme
// • Debug
// =======================================================

class CurriculoDeBolsoApp extends StatelessWidget {
  const CurriculoDeBolsoApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(

      // ===================================================
      // CONFIGURAÇÃO DO ROUTER
      // ===================================================

      routerConfig: appRouter,


      // ===================================================
      // CONFIGURAÇÕES DO APP
      // ===================================================

      title: 'Currículo de Bolso',

      debugShowCheckedModeBanner: false,


      // ===================================================
      // THEME GLOBAL
      // ===================================================

      theme: AppTheme.lightTheme,
    );
  }
}