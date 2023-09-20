import 'package:flutter/material.dart';

class calculatorscreen extends StatefulWidget {
  @override
  State<calculatorscreen> createState() => calculatorscreenstate();
}
class calculatorscreenstate extends State<calculatorscreen>
{
  late int firstnumber;
  late int secondnumber;
  late String result,operator,displaytext = "";
  void operationfunc(String textvalue)
  {
    if(textvalue =="C")
      {
        displaytext=="";
        firstnumber = 0;
        secondnumber = 0;
        result = "";
      }
    else if(textvalue=="+"||textvalue=="*"||textvalue=="/"||textvalue=="-"||textvalue==".")
      {
        firstnumber = int.parse(displaytext);
        result = "";
        operator = textvalue;
      }
    else if(textvalue=="=")
      {
        secondnumber = int.parse(displaytext);
        if(operator=="+")
          {
            result = (firstnumber+secondnumber).toString();
          }
        if(operator=="*")
        {
          result = (firstnumber*secondnumber).toString();
        }
        if(operator=="-")
        {
          result = (firstnumber-secondnumber).toString();
        }
        if(operator=="/")
        {
          result = (firstnumber~/secondnumber).toString();
        }
      }
    else
      {
        result = int.parse(displaytext+textvalue).toString();
      }
    setState(() {
      displaytext = result;
    });
  }
  Widget custombutton2(String textvalue)
  {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(backgroundColor: Colors.amber),
            onPressed:()=>operationfunc(textvalue),
            child:Text("$textvalue",
              style: TextStyle(fontSize: 55,color:Colors.black),)),
      ),
    );
  }
  Widget custombutton1(String textvalue)
  {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(backgroundColor: Colors.amber),
            onPressed:()=>operationfunc(textvalue),
            child:Text("$textvalue",
              style: TextStyle(fontSize: 55,color:Colors.black),)),
      ),
    );
  }
  Widget custombutton(String textvalue)
  {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: OutlinedButton(
            onPressed:()=>operationfunc(textvalue),
            child:Text("$textvalue",
            style: TextStyle(fontSize: 55,color:Colors.black),)),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
            child: Text("Calculator"
              ,style: TextStyle(
                  fontSize: 28,
                  color: Colors.white),)),
       ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment.bottomRight,
            height: 65,
            width: width * 0.9,
            child: Text("$displaytext",style: TextStyle(fontSize: 55),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Container(
              height:20,
              width: width*1,
              color: Colors.black,
            ),
          ),
          Row(
            children: [
              custombutton("1"),
              custombutton("2"),
              custombutton("3"),
              custombutton2("*"),

            ],
          ),
          Row(
            children: [
              custombutton("4"),
              custombutton("5"),
              custombutton("6"),
              custombutton2("/"),
            ],
          ),
          Row(
            children: [
              custombutton("7"),
              custombutton("8"),
              custombutton("9"),
              custombutton2("+"),
            ],
          ),
          Row(
            children: [
              custombutton1("C"),
              custombutton1("-"),
              custombutton("0"),
              custombutton1("="),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              child: Center(child: Text("Developed by Shrikant",style: TextStyle(color: Colors.white),)),
              height:20,
              width: width*1,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

}