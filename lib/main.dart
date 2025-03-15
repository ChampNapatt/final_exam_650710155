import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ProfileCard()));
}

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 216, 248, 244),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Napatt Srisodlert',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'IT Silpakorn Student',
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
            ),
            SizedBox(height: 20),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: ListTile(
                leading: Icon(Icons.cake, color: Colors.pink),
                title: Text('26 January 2004'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.blue),
                title: Text('srisodlert_n@silpakorn.edu'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: ListTile(
                leading: Icon(Icons.phone, color: Colors.green),
                title: Text('+66 926317578'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: ListTile(
                leading: Icon(Icons.location_on, color: Colors.red),
                title: Text('Ratchaburi, Thailand'),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'ติดต่อได้ที่ srisodlert_n@silpakorn.edu หรือเบอร์ 0926317578',
                    ),
                    duration: Duration(seconds: 3), // แสดงผล 3 วินาทีgit remote remove origin
                    behavior:
                        SnackBarBehavior.floating, // ให้ Snackbar ลอยขึ้นมา
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text('Contact Me', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
