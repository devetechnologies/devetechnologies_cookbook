import 'package:devetechnologies_cookbook/cookbooks/views/animations/physics_similation/physics_card_drag.dart';
import 'package:devetechnologies_cookbook/helpers/routs.dart';
import 'package:devetechnologies_cookbook/helpers/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dvetechnologies cookbooks',
      theme: themeData(),
      initialRoute: PhysicsCardDrag.routeName,
      routes: routes,
    );
  }
}
