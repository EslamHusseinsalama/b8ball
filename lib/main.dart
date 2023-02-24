import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('8_ball'),
          backgroundColor: Colors.blue,
        ),
        body: b8ball(),
      ),
    ),
  );
}

class b8ball  extends StatefulWidget {
 // const ({Key? key}) : super(key: key);
  @override
  _b8ballState createState() => _b8ballState();
}

class _b8ballState  extends State<b8ball> {
  int ballnum=1;

  @override
  Widget build(BuildContext context) {
    return Center(

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          Expanded(
            flex: 1,
            child: TextButton(onPressed:(){
              setState(() {
                ballnum=Random().nextInt(5)+1;
                print('done$ballnum');
              });
              },
            child: Image.asset('images/ball$ballnum.png'),

           ),
          ),
        ],
      ),


    );
  }
}
