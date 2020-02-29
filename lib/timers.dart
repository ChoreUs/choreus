import 'package:flutter/material.dart';

class TimersPage extends StatefulWidget {
  TimersPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TimersPageState createState() => _TimersPageState();
}


class _TimersPageState extends State<TimersPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.title)
      ),
    );
  }
}
