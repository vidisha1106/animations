import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
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
        child: AnimatedContainer(
          duration: Duration(seconds: 3),
          //color: selected ? Colors.purple : Colors.white10,
          width: selected ? 100 : 200,
          alignment: selected ? Alignment.bottomCenter : Alignment.topCenter,
          height: selected ? 500 : 300,
          curve: Curves.fastOutSlowIn,
          decoration: BoxDecoration(
            color: selected ? Colors.orangeAccent : Colors.tealAccent,
            boxShadow: [
              BoxShadow(
                  color: selected ? Colors.blue : Colors.brown,
                  blurRadius: selected ? 5 : 6,
                  blurStyle: selected ? BlurStyle.inner : BlurStyle.outer,
                  offset: selected ? Offset(0.1, 0.5) : Offset(0.7, 0.3),
                  spreadRadius: selected ? 5 : 7),
              BoxShadow(
                  color: selected ? Colors.orange : Colors.deepOrangeAccent,
                  blurRadius: selected ? 5 : 7,
                  blurStyle: selected ? BlurStyle.outer : BlurStyle.solid,
                  offset: selected ? Offset(0.2, 0.8) : Offset(0.6, 0.4),
                  spreadRadius: selected ? 5 : 7),
              BoxShadow(
                  color: selected ? Colors.blueAccent : Colors.deepPurple,
                  blurRadius: selected ? 5 : 8,
                  blurStyle: selected ? BlurStyle.inner : BlurStyle.normal,
                  offset: selected ? Offset(0.3, 0.7) : Offset(0.5, 0.5),
                  spreadRadius: selected ? 5 : 7),
            ],
            /*backgroundBlendMode:
                selected ? BlendMode.darken : BlendMode.colorBurn,*/
            borderRadius: BorderRadius.all(
              Radius.circular(selected ? 50 : 100),
            ),
            //shape: selected ? BoxShape.circle : BoxShape.rectangle,
            border: Border.all(
                color: selected ? Colors.lightBlue : Colors.deepOrangeAccent,
                width: selected ? 1 : 3),
          ),
        ),
      ),
    );
  }
}
