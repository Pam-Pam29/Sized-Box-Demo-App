import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SizedBox Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SizedBoxDemo(),
    );
  }
}

class SizedBoxDemo extends StatefulWidget {
  @override
  _SizedBoxDemoState createState() => _SizedBoxDemoState();
}

class _SizedBoxDemoState extends State<SizedBoxDemo> {
  // Properties to demonstrate SizedBox attributes
  double _width = 20.0;
  double _height = 20.0;
  Widget? _child = Container(color: Colors.blue, child: Center(child: Text('Box', style: TextStyle(color: Colors.white))));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedBox Widget Demo'),
        backgroundColor: Colors.blue,
      ),
        body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Text(
              'SizedBox Widget Demo',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Real-world use case: Creating space between buttons in a simple calculator app',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            SizedBox(height: 30),
            Text(
              'Simple Calculator Layout:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20),
               Center(
              child: Column(
                children: [
                  Container(
                    width: 200,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Center(
                      child: Text('123', style: TextStyle(fontSize: 24)),
                    ),
                  ),
                  
                  SizedBox(height: 20),
                        Center(
              child: Column(
                children: [
                  // Display area
                  Container(
                    width: 200,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Center(
                      child: Text('123', style: TextStyle(fontSize: 24)),
                    ),
                  ),
                  
                  // Space between display and buttons
                  SizedBox(height: 20),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: Center(child: Text('7', style: TextStyle(color: Colors.white, fontSize: 18))),
                      ),
                      

