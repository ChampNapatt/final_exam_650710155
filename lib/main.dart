import 'package:flutter/material.dart';
import 'answer1.dart';
import 'answer2.dart';

void main() {
  runApp(MaterialApp(home: PortalPage()));
}

class PortalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Final Exam')),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileCard()),
                );
              },
              child: Text('Answer1'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnswerP2()),
                );
              },
              child: Text('Answer2'),
            ),
          ],
        ),
      ),
    );
  }
}
