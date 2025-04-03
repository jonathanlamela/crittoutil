import 'package:crittoutil/src/generated/i18n/app_localizations.dart';
import 'package:crittoutil/widgets/buttons/generic_home_button.dart';
import 'package:flutter/material.dart';

class DecryptButton extends StatelessWidget {
  const DecryptButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericHomeButton(
      onClick: () {
        Navigator.pushNamed(context, "/decrypter");
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppLocalizations.of(context)!.decrypter),
              Text(
                AppLocalizations.of(context)!.descripter_description,
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
