import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedPositionedExample extends StatefulWidget {
  const AnimatedPositionedExample({super.key});

  @override
  State<AnimatedPositionedExample> createState() =>
      _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {
  bool item1 = true;
  bool item2 = true;
  bool item3 = true;
  bool item4 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onHorizontalDragUpdate: (details) {
            debugPrint("Horizontal Drag Behaviour");
            setState(() {
              item1 = !item1;
              item2 = !item1;
              item3 = !item1;
              item4 = !item1;
            });
          },
          child: Stack(
            children: [
              item1
                  ?

                  ///1
                  AnimatedPositioned(
                      top: 735.h,
                      left: 50.w,
                      curve:
                          item1 ? Curves.fastOutSlowIn : Curves.fastOutSlowIn,
                      duration: Duration(seconds: 5),
                      child: CircleAvatar(
                        radius: 25,
                        child: Text("1",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 15)),
                        backgroundColor: Colors.black38,
                      ),
                    )
                  :

                  ///5
                  AnimatedPositioned(
                      top: 735.h,
                      left: 50.w,
                      curve:
                          item1 ? Curves.fastOutSlowIn : Curves.fastOutSlowIn,
                      duration: Duration(seconds: 5),
                      child: CircleAvatar(
                        child: Text("5",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 15)),
                        radius: 25,
                        backgroundColor: Colors.red,
                      ),
                    ),
              item2
                  ?

                  ///2
                  AnimatedPositioned(
                      top: 800.h,
                      left: 225.w,
                      curve:
                          item2 ? Curves.fastOutSlowIn : Curves.fastOutSlowIn,
                      duration: Duration(seconds: 5),
                      child: CircleAvatar(
                        radius: 25,
                        child: Text("2",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 15)),
                        backgroundColor: Colors.greenAccent,
                      ),
                    )
                  :

                  ///6
                  AnimatedPositioned(
                      top: 800.h,
                      left: 225.w,
                      curve:
                          item2 ? Curves.fastOutSlowIn : Curves.fastOutSlowIn,
                      duration: Duration(seconds: 5),
                      child: CircleAvatar(
                        radius: 25,
                        child: Text("6",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 15)),
                        backgroundColor: Colors.cyanAccent,
                      ),
                    ),
              item3
                  ?

                  ///3
                  AnimatedPositioned(
                      top: 800.h,
                      left: 400.w,
                      duration: Duration(seconds: 5),
                      curve:
                          item3 ? Curves.fastOutSlowIn : Curves.fastOutSlowIn,
                      child: CircleAvatar(
                        radius: 25,
                        child: Text("3",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 15)),
                        backgroundColor: Colors.lightGreen,
                      ),
                    )
                  :

                  ///7
                  AnimatedPositioned(
                      top: 800.h,
                      left: 400.w,
                      duration: Duration(seconds: 5),
                      curve:
                          item3 ? Curves.fastOutSlowIn : Curves.fastOutSlowIn,
                      child: CircleAvatar(
                        radius: 25,
                        child: Text("7",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 15)),
                        backgroundColor: Colors.lightGreen,
                      ),
                    ),
              item4
                  ?

                  ///4
                  AnimatedPositioned(
                      top: 735.h,
                      left: 570.w,
                      curve:
                          item4 ? Curves.fastOutSlowIn : Curves.fastOutSlowIn,
                      duration: Duration(seconds: 5),
                      child: CircleAvatar(
                        radius: 25,
                        child: Text("4",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 15)),
                        backgroundColor: Colors.blue,
                      ),
                    )
                  :

                  ///8
                  AnimatedPositioned(
                      top: 735.h,
                      left: 570.w,
                      curve:
                          item4 ? Curves.fastOutSlowIn : Curves.fastOutSlowIn,
                      duration: Duration(seconds: 5),
                      child: CircleAvatar(
                        radius: 25,
                        child: Text("8",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 15)),
                        backgroundColor: Colors.blue,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
