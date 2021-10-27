import 'package:bottom_navigation_test/data/app_data.dart';
import 'package:bottom_navigation_test/widgets.dart';
import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  final int userId;
  const UserProfilePage({
    Key? key,
    required this.userId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = User.users[userId - 1];
    return Scaffold(
      backgroundColor: user.color,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UserAvatar(
              avatarColor: Colors.white,
              username: 'user${user.id}',
            )
          ],
        ),
      ),
    );
  }
}
