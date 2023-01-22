import 'package:flutter/material.dart';
import 'package:uidesign/test.dart';

void main() {
  return runApp(const Calc());
}

class Calc extends StatelessWidget {
  const Calc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BMI Calculator',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.black,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: const Color.fromARGB(255, 255, 0, 170),
          ),
          textTheme: const TextTheme(bodyText1: TextStyle(color: Colors.white)),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            centerTitle: true,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        home: const Home());
  }
}
