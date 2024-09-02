import 'package:flutter/material.dart';
import 'package:medistation_project/navbar.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key ? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.lightBlue,
        title: Center(
          child: Text('MediStation           ', style: TextStyle(color: Colors.white),),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Profile Page"),
            ],
          ),
        ),
      ),
    );

  }
}