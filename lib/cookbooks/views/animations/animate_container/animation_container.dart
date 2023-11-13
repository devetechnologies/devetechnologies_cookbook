import 'dart:math';

import 'package:flutter/material.dart';

import '../../view.dart';

class AnimationContainer extends StatefulWidget {
  static String routeName = "/animation_container";
  const AnimationContainer({super.key});

  @override
  State<AnimationContainer> createState() => _AnimationContainerState();
}

class _AnimationContainerState extends State<AnimationContainer> {
  double _width = 300;
  double _heigth = 300;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(8);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Container'),
        centerTitle: true,
      ),
      body: Body(
          width: _width,
          heidth: _heigth,
          color: _color,
          borderRadiusGeometry: _borderRadiusGeometry),
      floatingActionButton: _button(),
    );
  }

  FloatingActionButton _button() {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          final Random random = Random();
          _width = random.nextInt(300).toDouble();
          _heigth = random.nextInt(300).toDouble();

          _color = Color.fromRGBO(
            random.nextInt(256),
            random.nextInt(256),
            random.nextInt(256),
            1,
          );

          _borderRadiusGeometry =
              BorderRadius.circular(random.nextInt(100).toDouble());
        });
      },
      child: const Icon(Icons.play_arrow),
    );
  }
}
