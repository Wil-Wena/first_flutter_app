import 'package:first_flutter_app/constants/app_constants.dart';
import 'package:flutter/material.dart';

class RightBar extends StatelessWidget {
  final double barWidth;
  const RightBar({Key? key, required this.barWidth}) : super(key: key);

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
              color: Colors.orange),
        ),
      ],
    );
  }
}
