import 'package:flutter/material.dart';

class AnimationThirdExample extends StatefulWidget {
  const AnimationThirdExample({super.key});

  @override
  State<AnimationThirdExample> createState() => _AnimationThirdExampleState();
}

class _AnimationThirdExampleState extends State<AnimationThirdExample>
    with SingleTickerProviderStateMixin {
  Animation? animation;
  AnimationController? animationController;

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    animation = Tween(begin: 0.0, end: 1000.0).animate(animationController!);
    animation?.addStatusListener((status) {
      if(status == AnimationStatus.completed)
        {

        }
    });
  }
}
