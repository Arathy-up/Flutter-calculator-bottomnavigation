import 'package:flutter/material.dart';
class Division extends StatefulWidget {
  @override
  _DivisionState createState() => _DivisionState();
}

class _DivisionState extends State<Division> {
  TextEditingController div1=TextEditingController();
  TextEditingController div2=TextEditingController();
  var div="0";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 5.0,),
          TextField(
            style: TextStyle(color: Colors.blue),
            controller: div1,
            decoration: InputDecoration(
              hintText: "Enter first number",
              prefixIcon: Icon(Icons.looks_one),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 5.0,),
          TextField(
            style: TextStyle(color: Colors.blue),
            controller: div2,
            decoration: InputDecoration(
              hintText: "Enter second number",
              prefixIcon: Icon(Icons.looks_two),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 5.0,),
          RaisedButton(onPressed: (){
            setState(() {
              var d1=int.parse(div1.text);
              var d2=int.parse(div2.text);
              var d3=d1/d2;
              div=d3.toString();
            });
          },child: Text("DIV"),),
          Text(div)
        ],
      ),
    );
  }
}
