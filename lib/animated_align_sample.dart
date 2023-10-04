import 'package:flutter/material.dart';

class AnimatedAlignSample extends StatefulWidget {
  const AnimatedAlignSample({super.key});

  @override
  State<AnimatedAlignSample> createState() => _AnimatedAlignSampleState();
}

class _AnimatedAlignSampleState extends State<AnimatedAlignSample> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: 250,
          height: 250,
          color: Colors.grey,
          child: AnimatedAlign(
              curve: Curves.fastOutSlowIn,
              alignment: selected ? Alignment.center : Alignment.bottomCenter,
              duration: Duration(seconds: 1),
              child: FlutterLogo(
                size: 50,
              )),
        ),
      ),
    );
  }
}
