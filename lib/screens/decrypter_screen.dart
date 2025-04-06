import 'package:crittoutil/src/generated/i18n/app_localizations.dart';
import 'package:flutter/material.dart';

class DecrypterScreen extends StatelessWidget {
  const DecrypterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.decrypter,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Center(
        child: Text('Arriving soon', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
