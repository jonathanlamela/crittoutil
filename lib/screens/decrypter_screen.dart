import 'package:crittoutil/src/generated/i18n/app_localizations.dart';
import 'package:flutter/material.dart';

class DecrypterScreen extends StatelessWidget {
  const DecrypterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          AppLocalizations.of(context)!.decrypter,
          style: TextStyle(color: Colors.white),
        ),
        foregroundColor: Colors.white,
      ),
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Container(),
    );
  }
}
