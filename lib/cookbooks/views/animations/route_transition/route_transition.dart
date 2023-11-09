import 'package:flutter/material.dart';

import '../../view.dart';

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
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(_createRoute());
            },
            child: const Text('Never Give Up!')),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return const Page2();
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        final ofSetAnimation = animation.drive(tween);
        return SlideTransition(
          position: ofSetAnimation,
          child: child,
        );

        // return child;
      },
    );
  }
}
