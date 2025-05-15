import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

enum BottomBarItemsEnum {
  home,
  history,
  settings,
}

class LayoutScreenWidget extends StatelessWidget {
  const LayoutScreenWidget({
    required this.body,
    required this.pageKey,
    super.key,
  });

  final Widget body;
  final int pageKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text(
          '',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: body,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageKey,
        onTap: (value) {
          router.go('/${BottomBarItemsEnum.values[value].name}');
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
