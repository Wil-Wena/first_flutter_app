import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BMI Calculator"),
          titleTextStyle: const TextStyle(
            color: Color.fromARGB(0, 3, 0, 51),
            fontWeight: FontWeight.w300,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        backgroundColor: Color.fromARGB(0, 129, 127, 167),
        body: SingleChildScrollView(
            child: Column(
          children: const [
            SizedBox(
              height: 20,
            )
          ],
        )));
  }
}
