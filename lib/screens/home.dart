import 'package:first_flutter_app/widgets/left_bar.dart';
import 'package:first_flutter_app/widgets/right_bar.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  double _bmiFinal = 0;
  String _textFinal = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Wil BMI Calculator"),
          titleTextStyle: const TextStyle(
            color: Colors.orangeAccent,
            fontWeight: FontWeight.w900,
            fontSize: 40,
            fontStyle: FontStyle.italic,
          ),
          backgroundColor: const Color.fromARGB(40, 61, 22, 204),
          elevation: 1,
          centerTitle: true,
        ),
        backgroundColor: const Color.fromARGB(157, 61, 22, 204),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: _heightController,
                    style: const TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w400,
                      color: Colors.orange,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Height",
                      hintStyle: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: Color.fromARGB(255, 68, 155, 255)),
                    ),
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    controller: _weightController,
                    style: const TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w400,
                      color: Colors.orange,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Weight",
                      hintStyle: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: Colors.blueAccent),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            //Want Calculate to be a button instead of just text
            GestureDetector(
              onTap: () {
                double _h = double.parse(_heightController.text);
                double _w = double.parse(_weightController.text);
                setState(() {
                  _bmiFinal = _w / (_h * _h);
                  if (_bmiFinal > 25) {
                    _textFinal = "You're over weight";
                  } else if (_bmiFinal >= 18.5 && _bmiFinal <= 25) {
                    _textFinal = "You have a normal weight";
                  } else {
                    _textFinal = "You're under weight.";
                  }
                });
              },
              child: Container(
                child: const Text("Calculate",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange)),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              child: Text(
                _bmiFinal.toStringAsFixed(2),
                style: const TextStyle(fontSize: 90, color: Colors.orange),
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            //Want it to be visible when the result is not empty. For the string
            Visibility(
              visible: _textFinal.isNotEmpty,
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: Text(
                  _textFinal,
                  style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      color: Colors.orange),
                ),
              ),
            ),

            const SizedBox(height: 10),
            const LeftBar(barWidth: 70),
            const SizedBox(height: 20),
            const LeftBar(barWidth: 55),
            const SizedBox(height: 15),
            const LeftBar(barWidth: 45),
            const SizedBox(height: 15),
            const LeftBar(barWidth: 45),
            const SizedBox(height: 20),
            const LeftBar(barWidth: 55),
            const SizedBox(height: 10),
            const LeftBar(barWidth: 70),

            //  RightBar

            const SizedBox(height: 10),
            const RightBar(barWidth: 70),
            const SizedBox(height: 20),
            const RightBar(barWidth: 55),
            const SizedBox(height: 15),
            const RightBar(barWidth: 45),
            const SizedBox(height: 15),
            const RightBar(barWidth: 45),
            const SizedBox(height: 20),
            const RightBar(barWidth: 55),
            const SizedBox(height: 10),
            const RightBar(barWidth: 70),
          ],
        )));
  }
}
