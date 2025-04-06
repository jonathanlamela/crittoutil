import 'package:crittoutil/src/generated/i18n/app_localizations.dart';
import 'package:crittoutil/widgets/forms/converter_form.dart';
import 'package:flutter/material.dart';

class ConverterScreen extends StatelessWidget {
  const ConverterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.converter,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(padding: EdgeInsets.all(16), child: ConverterForm()),
    );
  }
}
