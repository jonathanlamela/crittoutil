import 'package:crittoutil/src/generated/i18n/app_localizations.dart';
import 'package:crittoutil/types/encrypt_alg_type.dart';
import 'package:flutter/material.dart';

class EncrypterScreen extends StatefulWidget {
  final AlgType algChoosen;

  const EncrypterScreen({super.key, required this.algChoosen});

  @override
  State<EncrypterScreen> createState() => _EncrypterScreenState();
}

class _EncrypterScreenState extends State<EncrypterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.encrypter,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Container(child: Text(this.widget.algChoosen.name)),
    );
  }
}
