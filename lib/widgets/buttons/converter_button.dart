import 'package:crittoutil/src/generated/i18n/app_localizations.dart';
import 'package:crittoutil/widgets/buttons/generic_home_button.dart';
import 'package:flutter/material.dart';

class ConverterButton extends StatelessWidget {
  const ConverterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericHomeButton(
      onClick: () {
        Navigator.pushNamed(context, "/converter");
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppLocalizations.of(context)!.converter),
              Text(
                AppLocalizations.of(context)!.converter_description,
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
