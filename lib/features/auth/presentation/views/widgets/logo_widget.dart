import 'package:chat_app/core/constants/asset_images.dart';
import 'package:flutter/material.dart';

class logoWidget extends StatelessWidget {
  const logoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70),
      child: Container(
        alignment: Alignment.center,
        child: Image.asset(
          AssetImages.logo,
          width: 300,
          height: 250,
        ),
      ),
    );
  }
}
