import 'package:flutter/material.dart';

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
            onTap: () => print('Meditation tapped')
          ),
          ListTile(
            leading: const Icon(Icons.tips_and_updates),
            title: const Text('Tips'),
            onTap: () => print('tips tapped')
          ),
          ListTile(
            leading: const Icon(Icons.notes),
            title: const Text('Goals and Rewards'),
            onTap: () => print('Goals and Rewards tapped')
          ),
          ListTile(
            leading: const Icon(Icons.medical_information),
            title: const Text('Breathing Exercises'),
            onTap: () => print('Breathing Exercises tapped')
          ),
          ListTile(
            leading: const Icon(Icons.person_2),
            title: const Text('Profile'),
            onTap: () => print('Profile tapped')
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notifications and Reminders'),
            onTap: () => print('Notifications tapped')
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
