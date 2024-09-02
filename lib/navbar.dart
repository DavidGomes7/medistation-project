import 'package:flutter/material.dart';
import 'package:medistation_project/exercisespage.dart';
import 'package:medistation_project/goalspage.dart';
import 'package:medistation_project/notificationspage.dart';
import 'package:medistation_project/profilepage.dart';
import 'package:medistation_project/tipspage.dart';
import 'mainpage.dart';



class Navbar extends StatelessWidget {

  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('David Gomes'),
            accountEmail: const Text('example@email.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Icon(Icons.person)),
            ),
            decoration: BoxDecoration(
              color: Colors.lightBlue
            ),
          ),
          ListTile(
            leading: const Icon(Icons.av_timer),
            title: const Text('Meditation'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => MainPage(title: 'MediStation           ',),
              ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.tips_and_updates),
            title: const Text('Tips'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => TipsPage(),
                ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.notes),
            title: const Text('Goals and Rewards'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => GoalsPage(),

              ));
            }
          ),
          ListTile(
            leading: const Icon(Icons.medical_information),
            title: const Text('Breathing Exercises'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => ExercisesPage(),
              ));
            }
          ),
          ListTile(
            leading: const Icon(Icons.person_2),
            title: const Text('Profile'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => ProfilePage(),
              ));
            }
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notifications and Reminders'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => NotificationsPage(),
              ));
            }
          ),
          Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => print('Settings tapped')
          ),
          ListTile(
            leading: const Icon(Icons.logout_rounded),
            title: const Text('Sign out'),
            onTap: () => print('Sign out tapped')
          )
        ],
      ),
    );

  
    
  }


}
