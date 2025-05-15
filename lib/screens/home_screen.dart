import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('Push-up'),
          onTap: () => router.pushNamed(
            'exercise',
            pathParameters: {
              'id': '1',
              'title': 'Push-up',
            },
          ),
        ),
        ListTile(
          title: Text('Reverse Bench Dips'),
        ),
      ],
    );
  }
}
