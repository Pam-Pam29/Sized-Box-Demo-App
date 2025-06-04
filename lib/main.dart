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
                          Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red, width: 2),
                        ),
                        child: SizedBox(
                          width: _width,
                          height: _height,
                          child: _child,
                        ),
                      ),
                      
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: Center(child: Text('8', style: TextStyle(color: Colors.white, fontSize: 18))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            // Controls Section
            Text(
              'Adjust Properties:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 15),
             Text('1. Width Property: ${_width.toInt()}px'),
            Slider(
              value: _width,
              min: 10.0,
              max: 150.0,
              divisions: 14,
              label: _width.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _width = value;
                });
              },
            ),
            SizedBox(height: 5),
             Text('2. Height Property: ${_height.toInt()}px'),
            Slider(
              value: _height,
              min: 10.0,
              max: 100.0,
              divisions: 9,
              label: _height.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _height = value;
                });
              },
            ),
            SizedBox(height: 10),
               Text('3. Child Property:'),
            SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _child = null; // Empty SizedBox for spacing
                    });
                  },
                  child: Text('Empty'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _child = Container(
                        color: Colors.blue,
                        child: Center(
                          child: Text('Box', style: TextStyle(color: Colors.white, fontSize: 12))
                        )
                      );
                    });
                  },
                  child: Text('Blue Box'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _child = Container(
                        color: Colors.green,
                        child: Center(
                          child: Icon(Icons.star, color: Colors.white, size: 20)
                        )
                      );
                    });
                  },
                  child: Text('Green Star'),
                ),
              ],
            ),

            SizedBox(height: 20),
             // Explanation
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Why use SizedBox?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 6),
                  Text('• Add space between calculator buttons'),
                  Text('• Make buttons the same size'),
                  Text('• Create gaps in form layouts'),
                  Text('• Space out list items evenly'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
                      

