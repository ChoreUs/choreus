import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  NewsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _NewsPageState createState() => _NewsPageState();
}


class _NewsPageState extends State<NewsPage> {

  @override
  Widget build(BuildContext context) {
    return Text(widget.title);
    // return Scaffold(
    //   body: Center(
    //     child: Text(widget.title)
    //   ),
    // );
  }
}
