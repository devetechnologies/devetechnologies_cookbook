import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

class DraggAbleCard extends StatefulWidget {
  final Widget child;
  const DraggAbleCard({super.key, required this.child});

  @override
  State<DraggAbleCard> createState() => _DraggAbleCardState();
}

class _DraggAbleCardState extends State<DraggAbleCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  Alignment _aliment = Alignment.center;
  late Animation<Alignment> _animation;

  void _runAnimation(Offset pixelsPerSecond, Size size) {
    _animation = _controller
        .drive(AlignmentTween(begin: _aliment, end: Alignment.center));
    // Calculate the velocity relative to the unit interval, [0,1],
    const spring = SpringDescription(
      mass: 25,
      stiffness: 1,
      damping: 1,
    );
    // used by the animation controller.
    final unitsPerSecondX = pixelsPerSecond.dx / size.width;
    final unitsPerSecondY = pixelsPerSecond.dy / size.height;
    final unitsPerSecond = Offset(unitsPerSecondX, unitsPerSecondY);
    final unitVelocity = unitsPerSecond.distance;

    final simulation = SpringSimulation(spring, 0, 1, -unitVelocity);

    _controller.animateWith(simulation);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _controller.addListener(() {
      setState(() {
        _aliment = _animation.value;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onPanDown: (details) {
        _controller.stop();
      },
      onPanUpdate: (details) {
        setState(() {
          _aliment += Alignment(details.delta.dx / size.width / 2,
              details.delta.dy / size.width / 2);
          print(_aliment);
        });
      },
      onPanEnd: (details) {
        _runAnimation(details.velocity.pixelsPerSecond, size);
      },
      child: Align(
        alignment: _aliment,
        child: Card(
          child: widget.child,
        ),
      ),
    );
  }
}
