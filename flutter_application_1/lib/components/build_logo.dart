import 'package:flutter/material.dart';

class BuildLogo extends StatelessWidget {
  final String imageUrl;

  const BuildLogo({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
