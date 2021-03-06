import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _color = Colors.red;
  List<Color> _colors = Colors.primaries;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IconButton'),
        centerTitle: true,
        backgroundColor: _color,
      ),
      body: Center(
        child: IconButton(
          // padding: EdgeInsets.all(
          //     50.0), // makes the splash 50 pixels wide at each side of the icon
          splashRadius:
              100.0, // makes the readius of the splash from the center 100 pixels wide
          tooltip: 'Shuffle App Bar Color',
          iconSize: 100.0,
          color: Colors.red, // only used if color is not predefined in icon
          icon: Icon(
            CupertinoIcons.arrow_2_squarepath,
            color: Colors.blue, // overrides icon button color
          ),
          onPressed: () {
            if (index == 0) {
              setState(() {
                _color = _colors.elementAt(index);
                index += 1;
              });
            } else if (index + 1 == _colors.length) {
              setState(() {
                index = 0;
                _color = _colors.elementAt(index);
              });
            } else {
              setState(() {
                _color = _colors.elementAt(index);
                index += 1;
              });
            }
          },
        ),
      ),
    );
  }
}
