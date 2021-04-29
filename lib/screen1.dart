import 'dart:ffi';
import 'dart:math';

import 'package:bmi_calculate/screen2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  bool ismale = true;
  double hight = 170.00;
  int age = 20;
  int weight = 50;

  @override
  Widget build(BuildContext context) {
    var result = weight / pow(hight / 100, 2);

    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "BMI Calculater",
          style: TextStyle(fontFamily: "mhmd"),
        ),
      ),
      body: SingleChildScrollView(
          child: ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xffFF1493),
                    Color(0xffFFE4C4),
                    Color(0xffFFB6C1),
                  ],
                )),
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    ismale = true;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: ismale
                                          ? Colors.pink
                                          : Colors.grey[500]),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.accessibility_rounded,
                                        size: 70,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text("MALE",
                                          style: TextStyle(
                                              fontFamily: "mhmd",
                                              color: Colors.white,
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    ismale = false;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color:
                                        ismale ? Colors.grey[500] : Colors.pink,
                                  ),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.face,
                                        size: 70,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text("FEMALE",
                                          style: TextStyle(
                                              fontFamily: "mhmd",
                                              color: Colors.white,
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[500],
                              borderRadius: BorderRadius.circular(12)),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "HEIGHT",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "mhmd"),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    "${hight.round()}",
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    "CM",
                                    style: TextStyle(
                                      fontFamily: "mhmd",
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Slider(
                                activeColor: Colors.pink,
                                value: hight,
                                min: 100,
                                max: 250,
                                onChanged: (value) {
                                  setState(() {
                                    hight = value;
                                  });
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.grey[500]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("AGE",
                                        style: TextStyle(
                                            fontFamily: "mhmd",
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "${age}",
                                      style: TextStyle(
                                          fontFamily: "mhmd",
                                          fontSize: 40,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        FloatingActionButton(
                                          backgroundColor: Colors.pink,
                                          heroTag: "a-",
                                          onPressed: () {
                                            setState(() {
                                              age--;
                                            });
                                          },
                                          mini: true,
                                          child: Icon(Icons.remove),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        FloatingActionButton(
                                          backgroundColor: Colors.pink,
                                          heroTag: "a+",
                                          onPressed: () {
                                            setState(() {
                                              age++;
                                            });
                                          },
                                          mini: true,
                                          child: Icon(Icons.add),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.grey[500]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("WEIGHT",
                                        style: TextStyle(
                                            fontFamily: "mhmd",
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "$weight",
                                      style: TextStyle(
                                          fontFamily: "mhmd",
                                          fontSize: 40,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        FloatingActionButton(
                                          backgroundColor: Colors.pink,
                                          heroTag: "w-",
                                          onPressed: () {
                                            setState(() {
                                              weight--;
                                            });
                                          },
                                          mini: true,
                                          child: Icon(Icons.remove),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        FloatingActionButton(
                                          backgroundColor: Colors.pink,
                                          heroTag: "w+",
                                          onPressed: () {
                                            setState(() {
                                              weight++;
                                            });
                                          },
                                          mini: true,
                                          child: Icon(Icons.add),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      color: Colors.pink,
                      width: double.infinity,
                      child: MaterialButton(
                          child: Text("Calculate",
                              style: TextStyle(
                                fontFamily: "mhmd",
                                color: Colors.white,
                              )),
                          height: 50,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Screen2(
                                      age: age,
                                      ismale: ismale,
                                      result: result.round(),
                                    )));
                          }),
                    )
                  ],
                ),
              ))),
    );
  }
}

class Secreen2 {}
