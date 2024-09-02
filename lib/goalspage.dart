import 'package:flutter/material.dart';
import 'package:medistation_project/navbar.dart';

class GoalsPage extends StatefulWidget {
  GoalsPage({Key ? key}) : super(key: key);

  @override
  _GoalsPageState createState() => _GoalsPageState();
}

class _GoalsPageState extends State<GoalsPage> {
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
              Text("Goals and Rewards Page")
            ],
          ),
        ),
      ),
    );

  }
}