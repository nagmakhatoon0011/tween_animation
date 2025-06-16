import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
 
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(title: Text("TweenAnimation",style: TextStyle(color: Colors.white),),leading: Icon(Icons.arrow_back,color: Colors.white,),backgroundColor: Colors.blueAccent,),
            body: ListView(
              children: [
                TweenAnimationBuilder(tween: Tween<double>(begin: 0,end: 1), duration: Duration(seconds: 2), builder: (context, value, child) {
                  return Opacity(opacity: value,child: child,);
                },child: Padding(
                  padding: const EdgeInsets.only(left:160,top: 30),
                  child: Text("Hello",style: TextStyle(fontSize: 20),),
                ),
                ),

                SizedBox(height: 30,),
                TweenAnimationBuilder(tween: Tween<Offset>(begin: Offset(-1, 0),end: Offset(0, 0)), duration: Duration(seconds: 2), builder: (context, value, child) {
                  return Transform.translate(offset: value,child: child,);
                },child: Container(
                  width:150,
                  height:150,
                  color: Colors.blueAccent,
                  decoration: ,
                ),),

                SizedBox(height: 30,),
                TweenAnimationBuilder(tween: Tween<double>(begin: 50,end: 200), duration: Duration(seconds: 3), builder: (context, value, child) {
                  return Container(
                    width: value,
                    height: 50,
                    color: Colors.green,
                  );
                },
                ),
                SizedBox(height: 30,),
                TweenAnimationBuilder(tween: Tween<double>(begin: 0,end: 1), duration: Duration(seconds: 2), builder: (context, value, child) {
                  return Transform.rotate(angle: value,child: child,);
                },child: Icon(Icons.refresh,size: 50,color: Colors.deepOrange,),),
                SizedBox(height: 30,),
                TweenAnimationBuilder(tween: ColorTween(begin: Colors.red,end: Colors.green), duration: Duration(seconds: 3), builder: (context, Color? color, child) {
                  return Container(
                    width: 200,height: 100,color: color,alignment: Alignment.center,
                    child: Text("fghjk"),
                  );
                },)
              ],
            )

        )
    );
  }
}
