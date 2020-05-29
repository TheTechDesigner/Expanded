import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
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
  String title = 'Expanded';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              // Fixed Container
              height: 75.0,
              width: 300.0,
              color: Color(0xFFC41A3B),
            ),
            SizedBox(
              height: 16.0,
            ),
            Expanded(
              flex: 1,
              child: Container(
                // Expanded Container
                color: Color(0xFFFBE0E6),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Expanded(
              flex: 2,
              child: Container(
                // Expanded Container
                color: Color(0xFF1B1F32),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Container(
              // Fixed Container
              color: Colors.yellow,
              height: 100.0,
              width: 200.0,
            )
          ],
        ),
      ),
    );
  }
}
