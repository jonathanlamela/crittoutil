import 'package:crittoutil/widgets/buttons/converter_button.dart';
import 'package:crittoutil/widgets/buttons/decrypt_button.dart';
import 'package:crittoutil/widgets/buttons/encrypt_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 16,
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(
                        Theme.of(context).brightness == Brightness.dark
                            ? "assets/icon_dark.png"
                            : "assets/icon.png",
                      ),
                      width: 48,
                    ),
                    SizedBox(width: 16),
                    Text(
                      "CrittoUtil",
                      style: GoogleFonts.aBeeZee(fontSize: 32),
                    ),
                  ],
                ),
              ),
              ConverterButton(),
              EncryptButton(),
              DecryptButton(),
            ],
          ),
        ),
      ),
    );
  }
}
