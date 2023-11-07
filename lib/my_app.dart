import 'package:devetechnologies_cookbook/cookbooks/views/animations/route_transition.dart';
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
      initialRoute: RouteTransition.routeName,
      routes: routes,
    );
  }
}
