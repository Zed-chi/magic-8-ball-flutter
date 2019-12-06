import 'package:flutter/material.dart';
import "dart:math";

void main() => runApp(
  MaterialApp(home: BallPage(),),
);


class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ball"),
      ),
      body: Ball(),
    );
  }
}


class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}


class _BallState extends State<Ball> {
  int num = 1;
  
  void changeNumber(){
    setState(()=>{
      num = Random().nextInt(5)+1
    });
    print("clicked");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
            onPressed: changeNumber,
            padding: EdgeInsets.all(0),
            child: Image(
              
              image: AssetImage("images/ball$num.png"),
            ),
    ));
  }
}