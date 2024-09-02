import 'package:flutter/material.dart';
import 'package:medistation_project/navbar.dart';

class NotificationsPage extends StatefulWidget {
  NotificationsPage({Key ? key}) : super(key:key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.lightBlue,
        title: Center(
          child: Text('MediStation           ', style: TextStyle(color: Colors.white),),
        )
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Notifications and Reminders Page"),
            ],
          ),
        ),
      ),
    );
  }
}