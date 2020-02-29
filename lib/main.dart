import 'package:flutter/material.dart';


//App Pages
import 'news.dart';
import 'chores.dart';
import 'timers.dart';
import 'calendar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: "Home"),
      );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              NewsPage(title:"News"),
              ChoresPage(title:"Chores"),
              TimersPage(title:"Timers"),
              CalendarPage(title:"Calendar"),
            ],
          ),
          bottomNavigationBar: Container(
            child: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.notifications)),
                Tab(icon: Icon(Icons.work)),
                Tab(icon: Icon(Icons.av_timer)),
                Tab(icon: Icon(Icons.calendar_today)),
              ],
              indicatorColor: Colors.white,
            ),
            color: Colors.green,
          ),
        ),
      );
  }
}
