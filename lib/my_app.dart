import 'package:devetechnologies_cookbook/helpers/routs.dart';
import 'package:devetechnologies_cookbook/helpers/theme.dart';
import 'package:flutter/material.dart';

import 'cookbooks/views/animations/animate_container/animation_container.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dvetechnologies cookbooks',
      theme: themeData(),
      initialRoute: AnimationContainer.routeName,
      routes: routes,
    );
  }
}
