import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  final int age;
  final int result;
  bool ismale;
  Screen2({@required this.age, @required this.ismale, @required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          " The Result",
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.w900, fontFamily: "mhmd"),
        ),
      ),
      body: Container(
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Gender : ${ismale ? "Male" : "Female"}",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    fontFamily: "mhmd"),
              ),
              Text(
                "Age : $age",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    fontFamily: "mhmd"),
              ),
              Text(
                "Result : $result",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    fontFamily: "mhmd"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
