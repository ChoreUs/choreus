import 'package:flutter/material.dart';

class Timer extends StatefulWidget {
  Timer({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<Timer> {

  @override
  Widget build(BuildContext context) {
   return Text("timer");
  }

}