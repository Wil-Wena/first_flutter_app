import 'package:first_flutter_app/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LeftBar extends StatelessWidget {
  final double barWidth;
  const LeftBar({required Key key, required this.barWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: barWidth,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(30),
              ),
              color: Color.fromARGB(0, 3, 0, 51)),
        ),
      ],
    );
  }
}
