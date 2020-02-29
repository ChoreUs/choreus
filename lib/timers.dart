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
    return  Center(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            
          ]
        )
      );
  }
}
