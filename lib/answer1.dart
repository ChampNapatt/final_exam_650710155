import 'package:flutter/material.dart';

void main() {
  runApp(ProfileCard());
}

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('โปรไฟล์ผู้ใช้')),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
              'ชื่อผู้ใช้: Napatt Srisodlert',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'อีเมล: srisodlert_n@silpakorn.edu',
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.blue),
              title: Text("การตั่งค่า"),
              onTap: () {},
            ),
            /*SizedBox(height: 20),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: ListTile(
                leading: Icon(Icons.settings, color: Colors.blue),
                title: Text('การตั่งค่า'),
              ),
            ),*/
            ListTile(
              leading: Icon(Icons.lock, color: Colors.blue),
              title: Text("เปลี่ยนรหัสผ่าน"),
              onTap: () {},
            ),
            /*Card(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: ListTile(
                leading: Icon(Icons.lock, color: Colors.blue),
                title: Text('เปลี่ยนรหัสผ่าน'),
              ),
            ),*/
            ListTile(
              leading: Icon(Icons.question_mark_rounded, color: Colors.blue),
              title: Text("ความเป็นส่วนตัว"),
              onTap: () {},
            ),
            /*Card(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: ListTile(
                leading: Icon(Icons.question_mark_rounded, color: Colors.blue),
                title: Text('ความเป็นส่วนตัว'),
              ),
            ),*/
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('แก้ไขโปรไฟล์'),
                    duration: Duration(
                      seconds: 1,
                    ), // แสดงผล 3 วินาทีgit remote remove origin
                    behavior:
                        SnackBarBehavior.floating, // ให้ Snackbar ลอยขึ้นมา
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 186, 221, 249),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text('แก้ไขโปรไฟล์', style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('ออกจากระบบ'),
                    duration: Duration(
                      seconds: 1,
                    ), // แสดงผล 3 วินาทีgit remote remove origin
                    behavior:
                        SnackBarBehavior.floating, // ให้ Snackbar ลอยขึ้นมา
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 186, 221, 249),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text('ออกจากระบบ', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
