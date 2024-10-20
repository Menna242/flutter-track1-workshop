// import 'dart:math';

import 'package:math_expressions/math_expressions.dart';
import 'package:flutter/material.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String above="";
  String equal='0';
  void calculate(){
    if(above!=""){
      Parser p = Parser();
      Expression exp = p.parse(above);
      above.replaceAll('%','/100');
      ContextModel cm = ContextModel();
      num result=exp.evaluate(EvaluationType.REAL, cm);
      equal = result.toString();
    }
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 50, 148, 229),
        centerTitle: false,
        title: const Text(
          "Calculator",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 40, 25, 35),
            width: 400,
            height: 266,
            color: const Color.fromARGB(255, 111, 111, 111),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ignore: unnecessary_string_interpolations
                Text(above,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25),
                ),
                 Text(equal,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 40),
                )
              ],
            ),
          )
          
          ,
           Row(
            children: [
              SizedBox(
                width: 97,
                height: 95,
                child: btn(color: const Color.fromARGB(255, 172, 212, 245),
                data: "C",
                onPressed: (){
                  setState(() {
                    above="";
                    equal='0';
                  });
                }),

              )
              ,
              SizedBox(
                width: 98,
                height: 95,
                child: btn(
                    color: const Color.fromARGB(255, 172, 212, 245),
                    data: "+/-",
                    onPressed: () {}),
              )
              ,
              SizedBox(
                width: 98,
                height: 95,
                child: btn(
                    color: const Color.fromARGB(255, 172, 212, 245),
                    data: "%",
                    onPressed: () {
                      setState(() {
                        above += "%";
                      });
                    }),
              )
              ,
              SizedBox(
                width: 97,
                height: 95,
                child: btn(
                    color: const Color.fromARGB(255, 172, 212, 245),
                    data: "DEL",
                    onPressed: () {
                      setState(() {
                        if(above!=""){
                            above=above.substring(0, above.length - 1);
                        }
                        
                      });
                    }),
              )
            ],
          )
          ,
          Row(
            children: [
              SizedBox(
                width: 97,
                height: 95,
                child: btn(
                    color:  Colors.white,
                    data: "7",
                    onPressed: () {
                      setState(() {
                        above += "7";
                      });
                    }),
              ),
              SizedBox(
                width: 98,
                height: 95,
                child: btn(
                    color: Colors.white,
                    data: "8",
                    onPressed: () {
                      setState(() {
                        above += "8";
                      });
                    }),
              ),
              SizedBox(
                width: 98,
                height: 95,
                child: btn(
                    color: Colors.white,
                    data: "9",
                    onPressed: () {
                      setState(() {
                        above += "9";
                      });
                    }),
              ),
              SizedBox(
                width: 97,
                height: 95,
                child: btn(
                    color:  Colors.blue,
                    data: "/",
                    colortext: Colors.white,
                    onPressed: () {
                      setState(() {
                        above += "/";
                      });
                    }),
              )
            ],
          )
          ,
          Row(
            children: [
              SizedBox(
                width: 97,
                height: 95,
                child: btn(color: Colors.white, data: "4", onPressed: () {
                  setState(() {
                        above += "4";
                      });
                }),
              ),
              SizedBox(
                width: 98,
                height: 95,
                child: btn(color: Colors.white, data: "5", onPressed: () {
                  setState(() {
                        above += "5";
                      });
                }),
              ),
              SizedBox(
                width: 98,
                height: 95,
                child: btn(color: Colors.white, data: "6", onPressed: () {
                  setState(() {
                        above += "6";
                      });
                }),
              ),
              SizedBox(
                width: 97,
                height: 95,
                child: btn(
                    color: Colors.blue,
                    data: "x",
                    colortext: Colors.white,
                    onPressed: () {
                      setState(() {
                        above += "*";
                      });
                    }),
              )
            ],
          )
          ,
          Row(
            children: [
              SizedBox(
                width: 97,
                height: 95,
                child: btn(color: Colors.white, data: "1", onPressed: () {
                  setState(() {
                        above += "1";
                      });
                }),
              ),
              SizedBox(
                width: 98,
                height: 95,
                child: btn(color: Colors.white, data: "2", onPressed: () {
                  setState(() {
                        above += "2";
                      });
                }),
              ),
              SizedBox(
                width: 98,
                height: 95,
                child: btn(color: Colors.white, data: "3", onPressed: () {
                  setState(() {
                        above += "3";
                      });
                }),
              ),
              SizedBox(
                width: 97,
                height: 95,
                child: btn(
                    color: Colors.blue,
                    data: "-",
                    colortext: Colors.white,
                    onPressed: () {
                      setState(() {
                        above += "-";
                      });
                    }),
              )
            ],
          )
          ,
          Row(
            children: [
              SizedBox(
                width: 97,
                height: 95,
                child: btn(color: Colors.white, data: "0", onPressed: () {
                  setState(() {
                        above += "0";
                      });
                }),
              ),
              SizedBox(
                width: 98,
                height: 95,
                child: btn(color: Colors.white, data: ".", onPressed: () {
                  setState(() {
                        above += ".";
                      });
                }),
              ),
              SizedBox(
                width: 98,
                height: 95,
                child: btn(color: Colors.orange, data: "=", onPressed: () {
                  setState(() {
                    calculate();
                    above=equal;
                  });
                },
                    colortext: Colors.white),
              ),
              SizedBox(
                width: 97,
                height: 95,
                child: btn(
                    color: Colors.blue,
                    data: "+",
                    colortext: Colors.white,
                    onPressed: () {
                      setState(() {
                        above += "+";
                      });
                    }),
              )
            ],
          )

        ],

      ),

      ) ;
   
   
  }
  

   MaterialButton btn(
      {required void Function()? onPressed, required String data, required Color? color,Color? colortext}) {
    return MaterialButton(
      height: 45,
      onPressed: onPressed,
      color: color,
      child: Text(data,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: colortext)),
    );
  }

   
}