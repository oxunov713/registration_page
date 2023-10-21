import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key, required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Image(
            image: AssetImage(path),
          ),
        ),
      ),
    );
  }
}
