import 'package:crittoutil/widgets/buttons/converter_button.dart';
import 'package:crittoutil/widgets/buttons/decrypt_button.dart';
import 'package:crittoutil/widgets/buttons/encrypt_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 16,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "CrittoUtil",
                style: GoogleFonts.aBeeZee(fontSize: 32),
              ),
            ),
            ConverterButton(),
            EncryptButton(),
            DecryptButton(),
          ],
        ),
      ),
    );
  }
}
