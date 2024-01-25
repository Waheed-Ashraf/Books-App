import 'package:books_app/core/utils/app_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksItem extends StatelessWidget {
  const FeaturedBooksItem({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kBookDetailsView);
        },
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
      ),
    );
  }
}
