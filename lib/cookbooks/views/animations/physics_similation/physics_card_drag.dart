import 'package:cached_network_image/cached_network_image.dart';
import 'package:devetechnologies_cookbook/cookbooks/views/animations/physics_similation/widgets/draggable_card.dart';
import 'package:devetechnologies_cookbook/cookbooks/views/view.dart';
import 'package:flutter/material.dart';

class PhysicsCardDrag extends StatelessWidget {
  static String routeName = "/physics_card";
  const PhysicsCardDrag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const DraggAbleCard(
          child: CacheNetworkImageWidget(
        width: 200,
        heidth: 200,
        url:
            'https://carwow-uk-wp-3.imgix.net/18015-MC20BluInfinito-scaled-e1666008987698.jpg',
      )),
    );
  }
}
