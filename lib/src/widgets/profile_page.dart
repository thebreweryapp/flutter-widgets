import 'package:flutter/material.dart';
import 'profile.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Profile(
        name: "John Doe",
        email: "sample@example.com",
      ),
    );
  }
}
