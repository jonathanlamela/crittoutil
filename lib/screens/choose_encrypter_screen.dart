import 'package:crittoutil/src/generated/i18n/app_localizations.dart';
import 'package:crittoutil/types/encrypt_alg_type.dart';
import 'package:flutter/material.dart';

class ChooseEncrypter extends StatelessWidget {
  const ChooseEncrypter({super.key});

  @override
  Widget build(BuildContext context) {
    List<AlgType> items = [
      AlgType(name: "MD5"),
      AlgType(name: "DES (ECB)", requirePrivateKey: true),
      AlgType(name: "DES (CBC)", requireIv: true, requirePrivateKey: true),
      AlgType(name: "AES (ECB)", requirePrivateKey: true),
      AlgType(name: "AES (CBC)", requireIv: true, requirePrivateKey: true),
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
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        "/encrypter",
                        arguments: items[index],
                      );
                    },
                    borderRadius: BorderRadius.circular(8),
                    splashColor: Colors.grey,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        items[index].name,
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
