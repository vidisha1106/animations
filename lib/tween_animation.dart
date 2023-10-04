import 'package:flutter/material.dart';

class TweenAnimationExample extends StatefulWidget {
  const TweenAnimationExample({super.key});

  @override
  State<TweenAnimationExample> createState() => _TweenAnimationExampleState();
}

class _TweenAnimationExampleState extends State<TweenAnimationExample>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? animation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          height: animation?.value,
          width: animation?.value,
          child: Text(
            "Hello World",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation =
        Tween<double>(begin: 0, end: 1000).animate(animationController!)
    /*animation?.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController?.reverse();
      } else if (status == AnimationStatus.dismissed) {
        animationController?.forward();
      }
    });*/
    ..addListener(() {
        setState(() {});
      });
    animationController?.forward();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }
}
