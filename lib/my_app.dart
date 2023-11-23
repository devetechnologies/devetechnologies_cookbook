import 'package:devetechnologies_cookbook/helpers/routs.dart';
import 'package:devetechnologies_cookbook/helpers/theme.dart';
import 'package:flutter/material.dart';
import 'cookbooks/views/desings/tab_bar/custom_tab_bar.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dvetechnologies cookbooks',
      theme: themeData(),
      initialRoute: CustomTapBar.routeName,
      routes: routes,
    );
  }
}
