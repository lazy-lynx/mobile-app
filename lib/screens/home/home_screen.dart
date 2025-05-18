import 'package:flutter/material.dart';
import 'package:my_app/navigation_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final navigation = NavigationService();

    return ListView(
      children: [
        ListTile(
          title: Text('Push-up'),
          onTap: () => navigation.goHome(),
        ),
        ListTile(
          title: Text('Reverse Bench Dips'),
        ),
      ],
    );
  }
}
