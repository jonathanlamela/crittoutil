import 'dart:convert';

import 'package:crittoutil/src/generated/i18n/app_localizations.dart';
import 'package:flutter/material.dart';

class ConverterForm extends StatefulWidget {
  const ConverterForm({super.key});

  @override
  State<ConverterForm> createState() => _ConverterFormState();
}

class _ConverterFormState extends State<ConverterForm> {
  String _inputType = 'text';
  final _formKey = GlobalKey<FormState>();
  final TextEditingController inputTextEditingController =
      TextEditingController();
  final TextEditingController outputTextEditingController =
      TextEditingController();

  String _outputType = 'binary';

  String outputResult = '';

  void _updateOutputType(String newInputType) {
    if (newInputType == _outputType) {
      setState(() {
        _outputType = [
          'text',
          'binary',
          'b64',
        ].firstWhere((type) => type != newInputType);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,

      key: _formKey,
      child: Column(
        spacing: 16,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            controller: inputTextEditingController,
            decoration: InputDecoration(
              labelText: AppLocalizations.of(context)!.input_label,
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return AppLocalizations.of(context)!.empty_field_error;
              }

              if (_inputType == 'binary') {
                final binaryRegex = RegExp(r'^[01\s]+$');
                if (!binaryRegex.hasMatch(value)) {
                  return AppLocalizations.of(context)!.no_valid_binary;
                }
              } else if (_inputType == 'b64') {
                final base64Regex = RegExp(r'^[A-Za-z0-9+/=]+$');
                if (!base64Regex.hasMatch(value)) {
                  return AppLocalizations.of(context)!.no_valid_base64;
                }
              }

              return null;
            },
          ),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              labelText: AppLocalizations.of(context)!.input_type_label,
            ),
            value: _inputType,
            items: [
              DropdownMenuItem(
                value: 'text',
                child: Text(AppLocalizations.of(context)!.text_format),
              ),
              DropdownMenuItem(
                value: 'binary',
                child: Text(AppLocalizations.of(context)!.binary_format),
              ),
              DropdownMenuItem(
                value: 'b64',
                child: Text(AppLocalizations.of(context)!.base64_format),
              ),
            ],
            onChanged: (value) {
              setState(() {
                _inputType = value!;
                _updateOutputType(_inputType);
              });
            },
          ),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              labelText: AppLocalizations.of(context)!.output_type_label,
            ),
            value: _outputType,
            items: [
              DropdownMenuItem(
                enabled: _inputType != 'text',
                key: const Key('text'),
                value: 'text',
                child: Text(
                  AppLocalizations.of(context)!.text_format,
                  style: TextStyle(
                    color: _inputType != 'text' ? Colors.black : Colors.grey,
                  ),
                ),
              ),
              DropdownMenuItem(
                enabled: _inputType != 'binary',
                key: const Key('binary'),
                value: 'binary',
                child: Text(
                  AppLocalizations.of(context)!.binary_format,
                  style: TextStyle(
                    color: _inputType != 'binary' ? Colors.black : Colors.grey,
                  ),
                ),
              ),
              DropdownMenuItem(
                enabled: _inputType != 'b64',
                key: const Key('b64'),
                value: 'b64',
                child: Text(
                  AppLocalizations.of(context)!.base64_format,
                  style: TextStyle(
                    color: _inputType != 'b64' ? Colors.black : Colors.grey,
                  ),
                ),
              ),
            ],
            onChanged: (value) {
              setState(() {
                _outputType = value!;
              });
            },
          ),
          outputResult.isNotEmpty
              ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.output_label,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SelectableText(
                    outputResult,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              )
              : const SizedBox(),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                String input = inputTextEditingController.text;
                String output = '';

                if (_inputType == 'text') {
                  if (_outputType == 'binary') {
                    output = input.codeUnits
                        .map((e) => e.toRadixString(2))
                        .join(' ');
                  } else if (_outputType == 'b64') {
                    output = base64Encode(input.codeUnits);
                  }
                } else if (_inputType == 'binary') {
                  if (_outputType == 'text') {
                    List<int> binaryValues =
                        input
                            .split(' ')
                            .map((e) => int.parse(e, radix: 2))
                            .toList();
                    output = utf8.decode(binaryValues);
                  } else if (_outputType == 'b64') {
                    List<int> binaryValues =
                        input
                            .split(' ')
                            .map((e) => int.parse(e, radix: 2))
                            .toList();
                    output = base64Encode(binaryValues);
                  }
                } else if (_inputType == 'b64') {
                  output = String.fromCharCodes(base64Decode(input));
                }

                setState(() {
                  outputResult = output;
                });
              }
            },
            child: Text(AppLocalizations.of(context)!.convert_btn),
          ),
        ],
      ),
    );
  }
}
