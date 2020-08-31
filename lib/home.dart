import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double n = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Coding with Me!',
                style: TextStyle(fontSize: n + 30),
              ),
              SizedBox(height: 24),
              Text(
                'This is the master branch. As you can see, there is not a lot here. Each branch relates to a specific Flutter topic discussed in the videos. Happy browisng!',
                style: TextStyle(fontSize: n + 20),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
            onPressed: () {
              setState(() {
                if (n <= 0) {
                  return n;
                }
                n = n - 1;
              });
            },
          ),
          FloatingActionButton(
            tooltip: 'Increment',
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                n = n + 1;
              });
            },
          ),
        ],
      ),
    );
  }
}
