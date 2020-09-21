import 'package:flutter/material.dart';
class Multiplication extends StatefulWidget {
  @override
  _MultiplicationState createState() => _MultiplicationState();
}

class _MultiplicationState extends State<Multiplication> {
  TextEditingController mul1=TextEditingController();
  TextEditingController mul2=TextEditingController();
  var mul="0";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 5.0,),
          TextField(
            style: TextStyle(color: Colors.blue),
            controller: mul1,
            decoration: InputDecoration(
              hintText: "Enter First Number",
              prefixIcon: Icon(Icons.looks_one),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 5.0,),
          TextField(
            style: TextStyle(color: Colors.blue),
            controller: mul2,
            decoration: InputDecoration(
              hintText: "Enter Second Number",
              prefixIcon: Icon(Icons.looks_two),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 5.0,),
          RaisedButton(onPressed: (){
            setState(() {
              var m1=int.parse(mul1.text);
              var m2=int.parse(mul2.text);
              var m3=m1*m2;
              mul=m3.toString();
            });
          },
          child: Text("MUL"),),
          Text(mul),
        ],
      ),
    );
  }
}
