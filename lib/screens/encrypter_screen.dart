import 'package:crittoutil/src/generated/i18n/app_localizations.dart';
import 'package:flutter/material.dart';

class EncrypterScreen extends StatelessWidget {
  const EncrypterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = [
      "MD5",
      "DES (ECB)",
      "DES (CBC)",
      "AES (ECB)",
      "AES (CBC)",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.encrypter,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Text(
                AppLocalizations.of(context)!.pick_alg,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                child: Material(
                  color:
                      Colors.grey.shade200, // imposta il colore di sfondo QUI
                  borderRadius: BorderRadius.circular(8),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(8),
                    splashColor: Colors.grey,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        items[index],
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              );
            }, childCount: items.length),
          ),
        ],
      ),
    );
  }
}
