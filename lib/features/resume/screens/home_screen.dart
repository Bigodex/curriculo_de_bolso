// =======================================================
// FLUTTER IMPORT
// =======================================================

import 'package:flutter/material.dart';


// =======================================================
// HOME SCREEN
// -------------------------------------------------------
// Tela inicial simples apenas para teste do app.
// =======================================================

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      // ===================================================
      // APP BAR
      // ===================================================

      appBar: AppBar(
        title: const Text("Currículo de Bolso"),
      ),


      // ===================================================
      // BODY
      // ===================================================

      body: const Center(

        child: Text(
          "Home Screen",
          style: TextStyle(
            fontSize: 20,
          ),
        ),

      ),
    );
  }
}