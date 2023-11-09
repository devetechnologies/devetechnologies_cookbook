import 'package:devetechnologies_cookbook/cookbooks/views/animations/physics_similation/physics_card_drag.dart';
import 'package:devetechnologies_cookbook/cookbooks/views/animations/route_transition/route_transition.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  RouteTransition.routeName: (context) => const RouteTransition(),
  PhysicsCardDrag.routeName: (context) => const PhysicsCardDrag(),
};
