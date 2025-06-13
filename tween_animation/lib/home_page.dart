import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late AnimationController controller;
  late Animation<double> sizeAnimation;
  @override
  void initState(){
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    opacityAnimation = Tween<double>(begin: 0.0,end: 100.0),
    sizeAnimation = Tween<double>(begin: 0.0,end: 100.0);
  }
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(backgroundColor: Colors.green,),
          body:Center(
            child: AnimatedBuilder(animation: sizeAnimation, builder: (context, child) {
              return Container(
                height: sizeAnimation.value,
                width: sizeAnimation.value,
                child: child,

              );
            },
              child: FlutterLogo(),
            ),
          )

        ));
  }
}
