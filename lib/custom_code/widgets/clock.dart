// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:slide_digital_clock/slide_digital_clock.dart';

class Clock extends StatefulWidget {
  const Clock({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: DigitalClock(
      areaDecoration: BoxDecoration(color: Colors.transparent),
      areaAligment: AlignmentDirectional.center,
      hourMinuteDigitDecoration: BoxDecoration(color: Colors.transparent),
      hourMinuteDigitTextStyle: TextStyle(fontSize: 20),
      secondDigitTextStyle: TextStyle(fontSize: 20),
    ));
  }
}
