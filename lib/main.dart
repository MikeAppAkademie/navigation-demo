import 'package:flutter/material.dart';

import 'models/user.dart';
import 'profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Vorlesung Navigation',
      home: OverviewScreen(),
    );
  }
}

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          UserPreview(
            user: User(
              name: "Kai",
              aboutMe: "Hi, ich bin der Kai :-)",
              age: 32,
              imagePath: "assets/user.jpg",
            ),
          ),
          UserPreview(
            user: User(
              name: "Andi",
              aboutMe: "Hi, ich bin der Andi :-)",
              age: 28,
              imagePath: "assets/user.jpg",
            ),
          )
        ],
      )),
    );
  }
}

class UserPreview extends StatelessWidget {
  final User user;
  const UserPreview({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.verified_user_outlined),
      title: Text(user.name),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Profile(
            user: user,
          ),
        ));
      },
    );
  }
}
