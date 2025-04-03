import 'package:crittoutil/src/generated/i18n/app_localizations.dart';
import 'package:flutter/material.dart';

class EncrypterScreen extends StatelessWidget {
  const EncrypterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          AppLocalizations.of(context)!.encrypter,
          style: TextStyle(color: Colors.white),
        ),
        foregroundColor: Colors.white,
      ),
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Container(),
    );
  }
}
