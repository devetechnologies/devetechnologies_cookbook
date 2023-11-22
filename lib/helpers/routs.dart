import 'package:devetechnologies_cookbook/cookbooks/views/animations/animate_container/animation_container.dart';
import 'package:devetechnologies_cookbook/cookbooks/views/animations/physics_simulation/physics_card_drag.dart';
import 'package:devetechnologies_cookbook/cookbooks/views/animations/route_transition/route_transition.dart';
import 'package:devetechnologies_cookbook/cookbooks/views/desings/snackbar/top_snack_bar.dart';
import 'package:devetechnologies_cookbook/cookbooks/views/desings/tab_bar/custom_tab_bar.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  RouteTransition.routeName: (context) => const RouteTransition(),
  PhysicsCardDrag.routeName: (context) => const PhysicsCardDrag(),
  AnimationContainer.routeName: (context) => const AnimationContainer(),
  TopSnackbar.routeName: (context) => const TopSnackbar(),
  CustomTapBar.routeName: (context) => const CustomTapBar(),
};
