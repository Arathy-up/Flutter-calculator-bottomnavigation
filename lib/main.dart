
import 'package:flutter/material.dart';
import 'package:flutter_cal_bottomnavigation/Addition.dart';
import 'package:flutter_cal_bottomnavigation/Division.dart';
import 'package:flutter_cal_bottomnavigation/Multiplication.dart';
import 'package:flutter_cal_bottomnavigation/Subtraction.dart';

void main()=>runApp(Myfluttercalculator());
class Myfluttercalculator extends StatefulWidget {
  @override
  _MyfluttercalculatorState createState() => _MyfluttercalculatorState();
}

class _MyfluttercalculatorState extends State<Myfluttercalculator> {
  var pages=[Addition(),Subtraction(),Multiplication(),Division()];
  int _count=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
        ),
        body: pages[_count],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _count,

            onTap: (index){
            setState(() {
              _count=index;
            });
            },
            backgroundColor: Colors.deepOrangeAccent,
            type: BottomNavigationBarType.fixed,
            items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
          title: Text("Addition")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.minimize),
              title: Text("Subtraction")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.clear),
              title: Text("Multiplication")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.check),
              title: Text("Division"))
        ]),
      ),
    );
  }
}
