import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CacheNetworkImageWidget extends StatelessWidget {
  const CacheNetworkImageWidget({
    super.key,
    required this.width,
    required this.heidth,
    required this.url,
  });

  final double width;
  final double heidth;
  final String url;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      key: UniqueKey(),
      imageUrl: url,
      imageBuilder: (context, imageProvider) => Container(
          width: width,
          height: heidth,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(image: imageProvider, fit: BoxFit.fill))),
      placeholder: (context, url) => Container(
        alignment: Alignment.center,
        child: FadeInImage(
          image: NetworkImage(url),
          placeholder: const AssetImage('assets/images/jar-loading.gif'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
