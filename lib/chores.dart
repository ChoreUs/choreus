import 'package:flutter/material.dart';

class ChoresPage extends StatefulWidget {
  ChoresPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ChoresPageState createState() => _ChoresPageState();
}


class _ChoresPageState extends State<ChoresPage> {

  @override
  Widget build(BuildContext context) {
    return Text("Chores");
    // return Scaffold(
    //   body: Center(
    //     child: Text(widget.title)
    //   ),
    // );
  }
}
