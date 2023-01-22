import 'dart:math';

import 'package:flutter/material.dart';
import 'package:uidesign/resultpage.dart';
import 'package:numberpicker/numberpicker.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get color => null;
  double currentValue = 0;

  int counter = 0;
  int counter1 = 0;
  String gender = 'm';

  bool check = true;

  double calculateBmi() {
    var bmiResult = counter / pow(currentValue / 100, 2);

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
                      backgroundImage: AssetImage("assets/images/joker.jpg"),
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
            const Divider(
                thickness: .06, color: Color.fromARGB(255, 30, 29, 29)),
            ListTile(
              iconColor: Colors.white,
              leading: const Icon(Icons.email),
              title: const Text('sanskarpokharel@gmail.com',
                  style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
          ])),
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: 150,
                    width: 150,
                    color: const Color.fromARGB(115, 51, 37, 63),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          gender = 'm';
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(115, 51, 37, 63),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      child: gender == 'm'
                          ? Column(
                              children: const [
                                Icon(
                                  Icons.male,
                                  size: 100,
                                  color: Colors.blue,
                                ),
                                Text('male'),
                              ],
                            )
                          : Column(
                              children: const [
                                Icon(
                                  Icons.male,
                                  size: 100,
                                  color: Colors.grey,
                                ),
                                Text('male'),
                              ],
                            ),
                    )),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 150,
                  width: 150,
                  color: const Color.fromARGB(115, 51, 37, 63),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        gender = 'f';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(115, 51, 37, 63)),
                    child: gender == 'f'
                        ? Column(
                            children: const [
                              Icon(
                                Icons.female,
                                size: 100,
                                color: Colors.pink,
                              ),
                              Text('Female'),
                            ],
                          )
                        : Column(
                            children: const [
                              Icon(
                                Icons.female,
                                size: 100,
                                color: Colors.grey,
                              ),
                              Text('Female'),
                            ],
                          ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 40,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 200,
                        width: 320,
                        color: const Color.fromARGB(115, 51, 37, 63),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              'Height',
                              style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 67, 67, 67),
                              ),
                            ),
                            Text(
                              '${currentValue.toStringAsFixed(0)} cm',
                              style: const TextStyle(fontSize: 40),
                            ),
                            Slider(
                                min: 0,
                                max: 300,
                                value: currentValue,
                                thumbColor:
                                    const Color.fromARGB(255, 221, 34, 96),
                                activeColor:
                                    const Color.fromARGB(255, 255, 255, 255),
                                inactiveColor: Colors.grey,
                                onChanged: (value) {
                                  setState(() {
                                    currentValue = value;
                                  });
                                }),
                          ],
                        ),
                      ),
                    ])
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      height: 150,
                      width: 150,
                      color: const Color.fromARGB(115, 51, 37, 63),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          const Text(
                            'WEIGHT',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 67, 67, 67)),
                          ),
                          // Text(
                          //   counter.toString(),
                          //   style: const TextStyle(fontSize: 25),
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              NumberPicker(
                                itemHeight: 30,
                                value: counter,
                                minValue: 0,
                                maxValue: 200,
                                onChanged: (value) =>
                                    setState(() => counter = value),
                              ),
                              // CircleAvatar(
                              //   backgroundColor:
                              //       const Color.fromARGB(115, 64, 44, 81),
                              //   radius: 20,
                              //   child: IconButton(
                              //       onPressed: () {
                              //         setState(() {
                              //           counter--;
                              //         });
                              //       },
                              //       icon: const Icon(Icons.remove)),
                              // ),
                              // const Padding(
                              //   padding: EdgeInsets.symmetric(horizontal: 10),
                              // ),
                              // CircleAvatar(
                              //   backgroundColor:
                              //       const Color.fromARGB(115, 64, 44, 81),
                              //   child: IconButton(
                              //       onPressed: () {
                              //         setState(() {
                              //           counter++;
                              //         });
                              //       },
                              //       icon: const Icon(Icons.add)),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      height: 150,
                      width: 150,
                      color: const Color.fromARGB(115, 51, 37, 63),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          const Text(
                            'AGE',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 67, 67, 67)),
                          ),
                          // Text(
                          //   counter1.toString(),
                          //   style: const TextStyle(fontSize: 35),
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              NumberPicker(
                                itemHeight: 30,
                                value: counter1,
                                minValue: 0,
                                maxValue: 100,
                                onChanged: (value) =>
                                    setState(() => counter1 = value),
                              ),
                              // CircleAvatar(
                              //   backgroundColor:
                              //       const Color.fromARGB(115, 64, 44, 81),
                              //   child: IconButton(
                              //       onPressed: () {
                              //         setState(() {
                              //           counter1--;
                              //         });
                              //       },
                              //       icon: const Icon(Icons.remove)),
                              // ),
                              // const Padding(
                              //   padding: EdgeInsets.symmetric(horizontal: 10),
                              // ),
                              // CircleAvatar(
                              //   backgroundColor:
                              //       const Color.fromARGB(115, 64, 44, 81),
                              //   child: IconButton(
                              //       onPressed: () {
                              //         setState(() {
                              //           counter1++;
                              //         });
                              //       },
                              //       icon: const Icon(Icons.add)),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultPage(
                                  height: counter,
                                  sliderValue: currentValue,
                                )));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 241, 64, 138),
                  ),
                  child: Text(
                    'Calculate BMI'.toUpperCase(),
                    style: const TextStyle(fontSize: 16),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
