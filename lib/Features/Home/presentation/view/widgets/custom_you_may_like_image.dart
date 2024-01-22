import 'package:books_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomYouMayLikeItemImage extends StatelessWidget {
  const CustomYouMayLikeItemImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
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
    );
  }
}
