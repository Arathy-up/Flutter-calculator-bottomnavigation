import 'package:flutter/material.dart';
class Addition extends StatefulWidget {
  @override
  _AdditionState createState() => _AdditionState();
}

class _AdditionState extends State<Addition> {
  TextEditingController add1=TextEditingController();
  TextEditingController add2=TextEditingController();
  var check="0";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 5.0,),
          TextField(
            style: TextStyle(color: Colors.blue),
            controller: add1,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.looks_one),
              hintText: "Enter first number",
              border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 5.0,),
          TextField(
            style: TextStyle(color: Colors.blue),
            controller: add2,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.looks_two),
                hintText: "Enter second number",
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 5.0,),
          RaisedButton(onPressed: (){
            setState(() {
              var a=int.parse(add1.text);
              var b=int.parse(add2.text);
              var c=a+b;
              check=c.toString();

            });


          },child: Text("ADD"),),
          Text(check),
        ],
      ),
    );
  }
}
