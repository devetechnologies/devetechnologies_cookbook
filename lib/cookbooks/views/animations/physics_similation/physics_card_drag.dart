import 'package:cached_network_image/cached_network_image.dart';
import 'package:devetechnologies_cookbook/cookbooks/views/animations/physics_similation/widgets/draggable_card.dart';
import 'package:flutter/material.dart';

class PhysicsCardDrag extends StatelessWidget {
  static String routeName = "/physics_card";
  const PhysicsCardDrag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DraggAbleCard(
        child: CachedNetworkImage(
          key: UniqueKey(),
          imageUrl:
              'https://carwow-uk-wp-3.imgix.net/18015-MC20BluInfinito-scaled-e1666008987698.jpg',
          imageBuilder: (context, imageProvider) => Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  image:
                      DecorationImage(image: imageProvider, fit: BoxFit.fill))),
          placeholder: (context, url) => Container(
            alignment: Alignment.center,
            child: const FadeInImage(
              image: NetworkImage(
                  'https://carwow-uk-wp-3.imgix.net/18015-MC20BluInfinito-scaled-e1666008987698.jpg'),
              placeholder: AssetImage('assets/images/jar-loading.gif'),
              fit: BoxFit.cover,
            ),
          ),
        ), /*FadeInImage(
        //width: 200,
        //height: 200,
        placeholder: AssetImage('assets/images/no-image.png'),
        image: NetworkImage(
            'https://carwow-uk-wp-3.imgix.net/18015-MC20BluInfinito-scaled-e1666008987698.jpg'),
        fit: BoxFit.cover,
      )*/
      ),
    );
  }
}
