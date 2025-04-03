import 'package:crittoutil/src/generated/i18n/app_localizations.dart';
import 'package:crittoutil/widgets/buttons/generic_home_button.dart';
import 'package:flutter/material.dart';

class EncryptButton extends StatelessWidget {
  const EncryptButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericHomeButton(
      onClick: () {
        Navigator.pushNamed(context, "/encrypter");
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppLocalizations.of(context)!.encrypter),
              Text(
                AppLocalizations.of(context)!.encrypter_description,
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
