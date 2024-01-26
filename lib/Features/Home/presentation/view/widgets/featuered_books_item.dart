import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BooksImageItem extends StatelessWidget {
  const BooksImageItem({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            // placeholder: (context, url) {
            //   return const CustomLoadingIndicator();
            // },
            errorWidget: (context, url, error) {
              return const Icon(Icons.error);
            },
            imageUrl: imageUrl,
          ),
        ),
      ),
    );
  }
}
