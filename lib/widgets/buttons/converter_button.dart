import 'package:crittoutil/src/generated/i18n/app_localizations.dart';
import 'package:crittoutil/widgets/buttons/generic_home_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConverterButton extends StatelessWidget {
  const ConverterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericHomeButton(
      onClick: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 1, child: Text(AppLocalizations.of(context)!.convert)),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Text(
                  "Text > 0101 > b64",
                  style: GoogleFonts.ibmPlexSans(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
