import 'package:devetechnologies_cookbook/cookbooks/views/animations/animate_container/animation_container.dart';
import 'package:devetechnologies_cookbook/cookbooks/views/desings/snackbar/top_snack_bar.dart';
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
      initialRoute: TopSnackbar.routeName, //AnimationContainer.routeName,
      routes: routes,
    );
  }
}
