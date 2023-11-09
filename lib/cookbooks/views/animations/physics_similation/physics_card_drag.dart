import 'package:devetechnologies_cookbook/cookbooks/views/animations/physics_similation/widgets/draggable_card.dart';
import 'package:flutter/material.dart';

class PhysicsCardDrag extends StatelessWidget {
  static String routeName = "/physics_card";
  const PhysicsCardDrag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const DraggAbleCard(
        child: FlutterLogo(
          size: 150,
        ),
      ),
    );
  }
}
