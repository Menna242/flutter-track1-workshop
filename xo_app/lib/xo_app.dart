// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class XoApp extends StatefulWidget {
  const XoApp({super.key});

  @override
  State<XoApp> createState() => _XoAppState();
}

class _XoAppState extends State<XoApp> {
  List<String> boxes = ["", "", "", "", "", "", "", "", ""];
  String player = "O";
  String congratulation = "";

  String boxfn(int n) {
    return boxes[n] = player;
  }
  void winning(){
    if((boxes[0]==boxes[1]&&boxes[2]==boxes[1]&&boxes[0]!="")||(boxes[3]==boxes[4]&&boxes[4]==boxes[5] && boxes[3] != "")||(boxes[6]==boxes[7]&&boxes[7]==boxes[8] && boxes[6] != "")||
        (boxes[0] == boxes[4] && boxes[4] == boxes[8] && boxes[0] != "")||
        (boxes[2] == boxes[4] && boxes[2] == boxes[6] && boxes[2] != "")||
        (boxes[0] == boxes[3] && boxes[3] == boxes[6] &&
            boxes[0] != "")/*row*/ ||
        (boxes[1] == boxes[4] && boxes[4] == boxes[7] && boxes[1] != "")||
        (boxes[2] == boxes[5] && boxes[5] == boxes[8] && boxes[2] != "")){
          congratulation = " \"congratulation $player is winner\" ";
         

    }
    
  }
  void reset(){
    
    boxes = ["", "", "", "", "", "", "", "", ""];
    player = "O";
    congratulation = "";
  }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        toolbarHeight: 10,
      ),
      backgroundColor: const Color(0xFF5D9E9F),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50, 20, 10, 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Text(
              congratulation,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 15, 47, 122),
                  fontSize: 25),
            ),
            const Text(
              "TIC TAC TOE",
              textAlign: TextAlign.center,
              
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 35),
            ),
            const Text("..........................",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFC9B38A),
                    fontSize: 35)),
            SizedBox(
              height: 120,
              child: RichText(
                textAlign: TextAlign.center,
                  text:  TextSpan(
                      text: "Turn",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                           color: Colors.white,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: " : "
                          ,
                          style: TextStyle(
                             color: Color(0xFFC9B38A),
                          )
                        ),
                        TextSpan(
                            text: player,
                            style: TextStyle(
                              color: player=="X"?Colors.white : Color(0xFF0B565A),
                            )
                            )
                      ]),
                )
              // child: Text(
              //   "Turn : $player",
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //       fontWeight: FontWeight.bold,
              //       color: Colors.white,
              //       fontSize: 35),
              // ),
            ),
            Container(
              width: 280,
              height: 300,
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              if (boxes[0] == "") {
                                boxfn(0);
                                winning();
                                if (player == "O") {
                                  player = "X";
                                } else {
                                  player = "O";
                                }
                                
                                
                              }
                              
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                            alignment: Alignment.center,
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Color(0xFFC9B38A), width: 5),
                                    right: BorderSide(
                                        color: Color(0xFFC9B38A), width: 5))),
                            child: Text(boxes[0],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: boxes[0] == "X"
                                        ? Colors.white
                                        : Color(0xFF0B565A),
                                    fontSize: 55)),
                          )),

                      InkWell(
                          onTap: () {
                            setState(() {
                              if (boxes[1] == "") {
                                boxfn(1);
                                winning();
                                if (player == "O") {
                                  player = "X";
                                } else {
                                  player = "O";
                                }
                                
                              }
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                            alignment: Alignment.center,
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Color(0xFFC9B38A), width: 5),
                                    right: BorderSide(
                                        color: Color(0xFFC9B38A), width: 5))),
                            child: Text(boxes[1],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: boxes[1] == "X"
                                        ? Colors.white
                                        : Color(0xFF0B565A),
                                    fontSize: 55)),
                          )),
                      InkWell(
                          onTap: () {
                            setState(() {
                              if (boxes[2] == "") {
                                boxfn(2);
                                winning();
                                if (player == "O") {
                                  player = "X";
                                } else {
                                  player = "O";
                                }
                                
                              }
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                            alignment: Alignment.center,
                            width: 80,
                            height: 100,
                            decoration: BoxDecoration(
                                border: Border(
                              bottom: BorderSide(
                                  color: Color(0xFFC9B38A), width: 5),
                            )),
                            child: Text(boxes[2],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: boxes[2] == "X"
                                        ? Colors.white
                                        : Color(0xFF0B565A),
                                    fontSize: 55)),
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              if (boxes[3] == "") {
                                boxfn(3);
                                 winning();
                                if (player == "O") {
                                  player = "X";
                                } else {
                                  player = "O";
                                }
                               
                              }
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
                            alignment: Alignment.center,
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Color(0xFFC9B38A), width: 5),
                                    right: BorderSide(
                                        color: Color(0xFFC9B38A), width: 5))),
                            child: Text(boxes[3],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: boxes[3] == "X"
                                        ? Colors.white
                                        : Color(0xFF0B565A),
                                    fontSize: 55)),
                          )),
                      InkWell(
                          onTap: () {
                            setState(() {
                              if (boxes[4] == "") {
                                boxfn(4);
                                winning();
                                if (player == "O") {
                                  player = "X";
                                } else {
                                  player = "O";
                                }
                                
                              }
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                            alignment: Alignment.center,
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Color(0xFFC9B38A), width: 5),
                                    right: BorderSide(
                                        color: Color(0xFFC9B38A), width: 5))),
                            child: Text(boxes[4],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: boxes[4] == "X"
                                        ? Colors.white
                                        : Color(0xFF0B565A),
                                    fontSize: 55)),
                          )),
                      InkWell(
                          onTap: () {
                            setState(() {
                              if (boxes[5] == "") {
                                boxfn(5);
                                winning();
                                if (player == "O") {
                                  player = "X";
                                } else {
                                  player = "O";
                                }
                                
                              }
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                            alignment: Alignment.center,
                            width: 80,
                            height: 100,
                            decoration: BoxDecoration(
                                border: Border(
                              bottom: BorderSide(
                                  color: Color(0xFFC9B38A), width: 5),
                            )),
                            child: Text(boxes[5],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: boxes[5] == "X"
                                        ? Colors.white
                                        : Color(0xFF0B565A),
                                    fontSize: 55)),
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              if (boxes[6] == "") {
                                boxfn(6);
                                winning();
                                if (player == "O") {
                                  player = "X";
                                } else {
                                  player = "O";
                                }
                                
                              }
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                            alignment: Alignment.center,
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: Color(0xFFC9B38A), width: 5))),
                            child: Text(boxes[6],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: boxes[6] == "X"
                                        ? Colors.white
                                        : Color(0xFF0B565A),
                                    fontSize: 55)),
                          )),
                      InkWell(
                          onTap: () {
                            setState(() {
                              if (boxes[7] == "") {
                                boxfn(7);
                                 winning();
                                if (player == "O") {
                                  player = "X";
                                } else {
                                  player = "O";
                                }
                               
                              }
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                            alignment: Alignment.center,
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: Color(0xFFC9B38A), width: 5))),
                            child: Text(boxes[7],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: boxes[7] == "X"
                                        ? Colors.white
                                        : Color(0xFF0B565A),
                                    fontSize: 55)),
                          )),
                      InkWell(
                          onTap: () {
                            setState(() {
                              if (boxes[8] == "") {
                                boxfn(8);
                                winning();
                                if (player == "O") {
                                  player = "X";
                                } else {
                                  player = "O";
                                }
                                
                              }
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                            alignment: Alignment.center,
                            width: 80,
                            height: 100,
                            child: Text(boxes[8],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: boxes[8] == "X"
                                        ? Colors.white
                                        : Color(0xFF0B565A),
                                    fontSize: 55)),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 250,
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    height: 50,
                    color: Color.fromARGB(255, 32, 111, 115),
                    onPressed: () {
                      setState(() {
                        boxes = ["", "", "", "", "", "", "", "", ""];
                        player="O";
                        congratulation = "";
                      });
                    },
                    child: Text("        New Game        ",
                        style: TextStyle(color: Colors.white, fontSize: 25)),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  MaterialButton(
                    height: 50,
                    color: Color.fromARGB(255, 32, 111, 115),
                    onPressed: () {
                      setState(() {
                          boxes = ["", "", "", "", "", "", "", "", ""];
                          player = "O";
                          congratulation="";

                      });
                    },
                    child: Text("       Reset Game       ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
