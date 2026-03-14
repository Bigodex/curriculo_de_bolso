// =======================================================
// FLUTTER IMPORT
// =======================================================

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';


// =======================================================
// APP THEME
// -------------------------------------------------------
// Configuração global do design do aplicativo.
// Design minimalista preto e branco.
// =======================================================

class AppTheme {

  // ===================================================
  // LIGHT THEME
  // ===================================================

  static final ThemeData lightTheme = ThemeData(

    // -------------------------------------------------
    // MATERIAL 3
    // -------------------------------------------------

    useMaterial3: true,


    // -------------------------------------------------
    // CORES BASE
    // -------------------------------------------------

    scaffoldBackgroundColor: AppColors.background,
    primaryColor: AppColors.black,


    // -------------------------------------------------
    // TIPOGRAFIA
    // -------------------------------------------------

    textTheme: GoogleFonts.interTextTheme().copyWith(

      titleLarge: const TextStyle(
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
      ),

      bodyMedium: const TextStyle(
        color: AppColors.textPrimary,
      ),

      bodySmall: const TextStyle(
        color: AppColors.textSecondary,
      ),
    ),


    // -------------------------------------------------
    // APP BAR
    // -------------------------------------------------

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: AppColors.black,
      centerTitle: false,
    ),


    // -------------------------------------------------
    // CARDS
    // -------------------------------------------------



    // -------------------------------------------------
    // BOTÕES
    // -------------------------------------------------

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.black,
        foregroundColor: AppColors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 14,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),


    // -------------------------------------------------
    // INPUTS
    // -------------------------------------------------

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.card,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppColors.border,
        ),
      ),
    ),
  );
}