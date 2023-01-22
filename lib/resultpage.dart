import 'dart:math';

import 'package:flutter/material.dart';
import 'package:uidesign/test.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key, required this.height, required this.sliderValue});

  final int height;
  final double sliderValue;
  double calculateBmi() {
    var bmiResult = height / pow(sliderValue / 100, 2);

    return bmiResult;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          backgroundColor: const Color.fromARGB(55, 133, 144, 155),
          child: ListView(children: [
            DrawerHeader(
              child: Column(
                children: const [
                  SizedBox(height: 10),
                  Center(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Color.fromARGB(133, 255, 0, 0),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("BMI BY:",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  Text("sanskar pokharel",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ],
              ),
            ),
            ListTile(
              iconColor: Colors.white,
              leading: const Icon(Icons.person),
              title: const Text('My Profile',
                  style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              iconColor: Colors.white,
              leading: const Icon(Icons.email),
              title: const Text('sanskarpokharel@gmail.com',
                  style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
          ])),
      appBar: AppBar(
        title: Text('bmi calcuator'.toUpperCase()),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 300,
                  color: const Color.fromARGB(255, 0, 0, 0),
                  child: Column(
                    children: [
                      Text(
                        'Your result'.toUpperCase(),
                        style: const TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 500,
                      width: 280,
                      color: const Color.fromARGB(115, 51, 37, 63),
                      child: Column(
                        children: [
                          Text(
                            calculateBmi().toStringAsFixed(2),
                            style: const TextStyle(
                                color: Color.fromARGB(255, 0, 255, 26),
                                fontSize: 30),
                          ),
                          const Divider(
                              thickness: .06,
                              color: Color.fromARGB(255, 30, 29, 29)),
                          calculateBmi() < 18
                              ? const Text(
                                  textAlign: TextAlign.center,
                                  '😥\n OH NOOOO !!!!! \n you are thin  \n🍲🍱🍳🍗🍒🍎',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontStyle: FontStyle.italic),
                                )
                              : calculateBmi() <= 25
                                  ? const Text(
                                      textAlign: TextAlign.center,
                                      '😊 \n WOW !!!!!! you are healthy nice \n🍇🍉🍍🍒🌽',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontStyle: FontStyle.italic),
                                    )
                                  : calculateBmi() >= 30
                                      ? const Text(
                                          textAlign: TextAlign.center,
                                          '😅 \nAISHHHHHH!!!You have more weight than normal so do  excercise\n💪🚵🚴🏊🏇🏃',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontStyle: FontStyle.italic),
                                        )
                                      : const Text(
                                          textAlign: TextAlign.center,
                                          '😱\n OMG!!!!!\n  you are over weight do many excersise \n💪🚵🚴🏊🏇🏃',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontStyle: FontStyle.italic),
                                        ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 70,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 241, 64, 138),
                  ),
                  child: Text(
                    ' RE-Calculate BMI'.toUpperCase(),
                    style: const TextStyle(fontSize: 16),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
