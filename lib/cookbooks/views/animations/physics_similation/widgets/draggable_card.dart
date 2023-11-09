import 'package:flutter/material.dart';

class DraggAbleCard extends StatefulWidget {
  final Widget child;
  const DraggAbleCard({super.key, required this.child});

  @override
  State<DraggAbleCard> createState() => _DraggAbleCardState();
}

class _DraggAbleCardState extends State<DraggAbleCard> {
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Card(
        child: widget.child,
      ),
    );
  }
}
