import 'package:books_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class BookDetailsImage extends StatelessWidget {
  const BookDetailsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 106),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.testImage),
            ),
          ),
        ),
      ),
    );
  }
}
