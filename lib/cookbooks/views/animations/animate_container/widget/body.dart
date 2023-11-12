import 'package:cached_network_image/cached_network_image.dart';
import 'package:devetechnologies_cookbook/cookbooks/views/animations/animate_container/animation_container.dart';
import 'package:flutter/material.dart';

import '../../../view.dart';

class Body extends StatelessWidget {
  final width;
  final heidth;
  final color;
  final BorderRadiusGeometry borderRadiusGeometry;

  const Body(
      {super.key,
      this.width,
      this.heidth,
      this.color,
      required this.borderRadiusGeometry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        width: width,
        height: heidth,
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        child: CacheNetworkImageWidget(
          width: width,
          heidth: heidth,
          url:
              'https://carwow-uk-wp-3.imgix.net/18015-MC20BluInfinito-scaled-e1666008987698.jpg',
        ),
      ),
    );
  }
}
