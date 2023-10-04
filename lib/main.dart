import 'package:animations/animated_align_sample.dart';
import 'package:animations/animated_container_example.dart';
import 'package:animations/animated_positioned_example.dart';
import 'package:animations/physics_based_animation.dart';
import 'package:animations/tween_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(700, 1600),
      builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return TweenAnimationExample();
                      },
                    ),
                  );
                },
                child: Text(
                  "Tween Animation",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PhysicsBasedAnimation();
                      },
                    ),
                  );
                },
                child: Text(
                  "Physics based Animation",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return AnimatedAlignSample();
                      },
                    ),
                  );
                },
                child: Text(
                  "Animated Align Example",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return AnimatedContainerExample();
                      },
                    ),
                  );
                },
                child: Text(
                  "Animated Container Example",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return AnimatedPositionedExample();
                      },
                    ),
                  );
                },
                child: Text(
                  "Animated Positioned Example",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                )),
          ],
        ),
      ),
    );
  }
}
