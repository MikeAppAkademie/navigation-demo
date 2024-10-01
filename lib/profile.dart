import 'package:flutter/material.dart';

import 'models/user.dart';

class Profile extends StatelessWidget {
  final User user;
  const Profile({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(user.imagePath),
                const Positioned(
                  top: 10,
                  left: 10,
                  child: NewIconButton(
                    icon: Icons.arrow_back,
                  ),
                ),
                const Positioned(
                  top: 10,
                  right: 10,
                  child: NewIconButton(
                    icon: Icons.more_vert_outlined,
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 20,
                  child: Text(
                    "${user.name}, ${user.age}",
                    style: const TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(user.aboutMe),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NewIconButton extends StatelessWidget {
  final IconData icon;
  const NewIconButton({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
    );
  }
}
