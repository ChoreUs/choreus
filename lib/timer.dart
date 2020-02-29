import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';

class Timer extends StatefulWidget {
  Timer({Key key, this.symbol}) : super(key: key);

  final IconData symbol;

  @override
  _TimerState createState() => _TimerState(symbol);
}

class _TimerState extends State<Timer> {

  bool isRunning;
  IconData symbol;
  DateTime alertTime;

  _TimerState(symbol)
  {
    isRunning = false;
    this.symbol = symbol;
  }

   @override
  void initState() {
    super.initState();
    alertTime = DateTime.now().subtract(Duration(seconds: 10));
  }

  @override
  Widget build(BuildContext context) {
   return LayoutBuilder(
        builder:(context, constraint)
        {
          return SizedBox.expand(
            child: RaisedButton(
              color: getPrimaryColor(),
              splashColor: getSecondaryColor(),
              child: Column(children: <Widget>[
              Icon(symbol, size:constraint.biggest.width - 50, color: Colors.white),
              TimerBuilder.periodic(Duration(seconds: 1),
                builder: (context) {
                  final now = DateTime.now();
                  var remaining = alertTime.difference(now);
                  updateRunState();
                  if(isRunning)
                  {
                    return Text(formatDuration(remaining),
                      style:TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30));
                  }
                  else
                  {
                    return Text("Ready",
                      style:TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30));
                  }
                  
                })
              ],
            ),
            onPressed: () {
              resetTimer();
            },
          )
        );
      }
    );
  }

  //Changes Background on timer finish
  Color getPrimaryColor()
  {
      Duration difference = alertTime.difference(DateTime.now());
      if(!isRunning && difference.inSeconds < 0)
        return Colors.green;
      else
        return Colors.red; 
  }


  Color getSecondaryColor()
  {
    Duration difference = alertTime.difference(DateTime.now());
    if(isRunning && difference.inSeconds < 0)
      return Colors.red;
    else
      return Colors.green; 
  }

  void updateRunState()
  {
    Duration difference = alertTime.difference(DateTime.now());
    if(difference.inSeconds < 0)
      isRunning = false;
    else
      isRunning = true; 
  }

  void resetTimer()
  {
    setState(() {
      alertTime = DateTime.now().add(Duration(seconds: 10));
    });
  }

  String formatDuration(Duration d) {
    String f(int n) {
      return n.toString().padLeft(2, '0');
    }
    // We want to round up the remaining time to the nearest second
    d += Duration(microseconds: 999999);
    return "${f(d.inMinutes)}:${f(d.inSeconds%60)}";
  }
}