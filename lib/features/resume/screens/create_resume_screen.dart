// =======================================================
// FLUTTER IMPORT
// =======================================================

import 'package:flutter/material.dart';


// =======================================================
// CREATE RESUME SCREEN
// -------------------------------------------------------
// Tela simples apenas para validar navegação.
// =======================================================

class CreateResumeScreen extends StatelessWidget {

  const CreateResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      // ===================================================
      // APP BAR
      // ===================================================

      appBar: AppBar(
        title: const Text("Criar Currículo"),
      ),


      // ===================================================
      // BODY
      // ===================================================

      body: const Center(

        child: Text(
          "Create Resume Screen",
          style: TextStyle(
            fontSize: 20,
          ),
        ),

      ),
    );
  }
}