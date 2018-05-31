import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'This is second',
      home: new HomeApp(),
      theme: new ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepOrange),
    );
  }
}

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => new _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  String data = 'Old App Bar';
  String texting = 'Old Text';

  Widget _motorola() {
    return new Container(
      padding: const EdgeInsets.all(25.04),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(texting),
          ],
        ),
      ),
    );
  }

  void _changing() {
    setState(() {
      data = 'New App Bar Text';
      texting = 'New Text';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(data),
      ),
      body: _motorola(),
      floatingActionButton: new FloatingActionButton(
        onPressed: _changing,
        child: new Icon(Icons.add),
      ),
    );
  }
}
