import 'package:flutter/material.dart';
class Subtraction extends StatefulWidget {
  @override
  _SubtractionState createState() => _SubtractionState();
}

class _SubtractionState extends State<Subtraction> {
  TextEditingController sub1=TextEditingController();
  TextEditingController sub2=TextEditingController();
  var sub="0";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 5.0,),
          TextField(
            style: TextStyle(color: Colors.blue),
            controller: sub1,
            decoration: InputDecoration(
              hintText: "Enter first number",
              prefixIcon: Icon(Icons.looks_one),
              border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 5.0,),
          TextField(
            style: TextStyle(color: Colors.blue),
            controller: sub2,
            decoration: InputDecoration(
                hintText: "Enter second number",
                prefixIcon: Icon(Icons.looks_two),
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 5.0,),
          RaisedButton(onPressed: (){
            setState(() {
              var s1=int.parse(sub1.text);
              var s2=int.parse(sub2.text);
              var s3=s1-s2;
              sub=s3.toString();
            });
          },child: Text("SUB"),),
          Text(sub),
        ],
      )
    );
  }
}
