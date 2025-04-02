import 'package:crittoutil/src/generated/i18n/app_localizations.dart';
import 'package:crittoutil/widgets/buttons/generic_home_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DecryptButton extends StatelessWidget {
  final Function onClick;

  const DecryptButton({super.key, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return GenericHomeButton(
      onClick: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 1, child: Text(AppLocalizations.of(context)!.decrypt)),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Text(
                  "as21as1adfx > Text",
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
