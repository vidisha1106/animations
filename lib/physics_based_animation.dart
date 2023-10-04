import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'dart:math';

class PhysicsBasedAnimation extends StatefulWidget {
  const PhysicsBasedAnimation({super.key});

  @override
  State<PhysicsBasedAnimation> createState() => _PhysicsBasedAnimationState();
}

class _PhysicsBasedAnimationState extends State<PhysicsBasedAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: PhysicsBox()),
    );
  }
}

class PhysicsBox extends StatefulWidget {
  final boxPosition;

  const PhysicsBox({super.key, this.boxPosition = 0.0});

  @override
  BoxState createState() => BoxState();
}

class BoxState extends State<PhysicsBox> with TickerProviderStateMixin {
  double? boxPosition;
  double? boxPositionOnStart;
  Offset? start;
  Offset? point;

  AnimationController? animationController;
  ScrollSpringSimulation? simulation;

  @override
  void initState() {
    super.initState();
    boxPosition = widget.boxPosition;
    simulation = ScrollSpringSimulation(
        SpringDescription(mass: 1.0, stiffness: 1, damping: 1), 0, 1, 0);
    animationController = AnimationController(vsync: this)
      ..addListener(() {
        print('${simulation?.x(animationController!.value)}');
      });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanStart: startDrag,
      onPanUpdate: onDrag,
      onPanEnd: endDrag,
      child: CustomPaint(
        //painter: BoxPainter(),
        child: Container(),
      ),
    );
  }

  void startDrag(DragStartDetails details) {
    start = (context.findRenderObject() as RenderBox)
        .globalToLocal(details.globalPosition);
    boxPositionOnStart = boxPosition;
  }

  void onDrag(DragUpdateDetails details) {
    setState(() {
      point = (context.findRenderObject() as RenderBox)
          .globalToLocal(details.globalPosition);
      final dragVec = start!.dy - point!.dy;
      final normDragVec = (dragVec / context.size!.height).clamp(-1, 1);
      boxPosition = (boxPositionOnStart! + normDragVec).clamp(0, 1);
    });
  }

  void endDrag(DragEndDetails details) {
    setState(() {
      start = null;
      point = null;
      boxPositionOnStart = null;
    });
  }
}

class BoxPainter extends CustomPainter {
  final double boxPosition;
  final double boxPositionOnStart;
  final Color color;
  final Offset touchPoint;
  final Paint boxPaint;
  final Paint dropPaint;

  BoxPainter({
    this.boxPosition = 0,
    this.boxPositionOnStart = 0,
    this.color = Colors.grey,
    required this.touchPoint,
  })  : boxPaint = Paint(),
        dropPaint = Paint() {
    boxPaint.color = this.color;
    boxPaint.style = PaintingStyle.fill;
    dropPaint.color = Colors.grey;
    dropPaint.style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.clipRect(Rect.fromLTWH(0, 0, size.width, size.height));
    final boxValueY = size.height - (size.height * boxPosition);
    final prevBoxValueY = size.height - (size.height * boxPosition);
    final midPointY = ((boxValueY - prevBoxValueY) * 1.2 + prevBoxValueY)
        .clamp(0, size.height);
    Point left, mid, right;
    left = Point(-100, prevBoxValueY);
    right = Point(size.width + 50, prevBoxValueY);
    if (null != touchPoint) {
      mid = Point(touchPoint.dx, prevBoxValueY);
    } else {
      mid = Point(size.width / 2, midPointY);
    }

    /*final path=Path();
    path.moveTo(mid.x, mid.y);*/
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
