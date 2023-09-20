import 'package:flutter/material.dart';
import 'calculatorscreen.dart';
void main()
{
  runApp(Myapp());
}
class Myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
       return MaterialApp(
         color: Colors.white,
         title: "CalculatorApp",
         debugShowCheckedModeBanner: false,
         home: calculatorscreen(),
       );
  }

}
