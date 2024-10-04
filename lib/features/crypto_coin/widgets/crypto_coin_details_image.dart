import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CryptoCoinDetailsImage extends StatelessWidget {
  const CryptoCoinDetailsImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 160,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        imageBuilder: (context, imageProvider) => Image(image: imageProvider),
        progressIndicatorBuilder: (context, url, progress) => Center(
          child: CircularProgressIndicator(
            value: progress.progress,
          ),
        ),
      ),
    );
  }
}
