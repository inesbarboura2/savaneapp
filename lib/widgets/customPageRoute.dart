import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class CustomPageRoute extends PageRouteBuilder {
  final Widget child;
  final AxisDirection direction;
  CustomPageRoute({required this.child, required this.direction})
      : super(
            transitionDuration: Duration(seconds: 2),
            reverseTransitionDuration: Duration(seconds: 2),
            pageBuilder: (context, animation, secondaryAnimation) => child);
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      SlideTransition(
        position: Tween<Offset>(
          begin: getBeginOffset(),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
  Offset getBeginOffset() {
    switch (direction) {
      case AxisDirection.right:
        return Offset(-1, 0);
      case AxisDirection.left:
        return Offset(1, 0);
      case AxisDirection.up:
        return Offset(1, 0);

      case AxisDirection.down:
        return Offset(1, 0);
    }
  }
}
