import 'package:crittoutil/widgets/buttons/converter_button.dart';
import 'package:crittoutil/widgets/buttons/decrypt_button.dart';
import 'package:crittoutil/widgets/buttons/encrypt_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CrittoUtil", style: TextStyle(color: Colors.white)),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 16,
          children: [ConverterButton(), EncryptButton(), DecryptButton()],
        ),
      ),
    );
  }
}
