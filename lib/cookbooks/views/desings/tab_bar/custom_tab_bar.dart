import 'package:flutter/material.dart';
import 'body_custom_tap_bar.dart';

class CustomTapBar extends StatelessWidget {
  static String routeName = "/custom_tab_bar";
  const CustomTapBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Tap Bar!'),
        centerTitle: true,
      ),
      body: const BodyCustomTapBar(),
    );
  }
}
