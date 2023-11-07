import 'package:flutter/material.dart';

class RouteTransition extends StatelessWidget {
  static String routeName = "/route_trasition";
  const RouteTransition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trasition'),
        centerTitle: true,
      ),
    );
  }
}
