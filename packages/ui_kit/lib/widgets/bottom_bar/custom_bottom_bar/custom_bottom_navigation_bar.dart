part of '../bottom_bar.dart';

enum Menu {
  home,
  history,
  settings,
}

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    required this.selectedTab,
    required this.onTapHome,
    required this.onTapHistory,
    required this.onTapSettings,
    super.key,
  });

  final Menu selectedTab;
  final VoidCallback onTapHome;
  final VoidCallback onTapHistory;
  final VoidCallback onTapSettings;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ItemMenu(
            isSelected: selectedTab == Menu.home,
            icon: Assets.icons.home,
            onTap: onTapHome,
          ),
        ),
        Expanded(
          child: ItemMenu(
            isSelected: selectedTab == Menu.history,
            icon: Assets.icons.history,
            onTap: onTapHistory,
          ),
        ),
        Expanded(
          child: ItemMenu(
            isSelected: selectedTab == Menu.settings,
            icon: Assets.icons.settings,
            onTap: onTapSettings,
          ),
        ),
      ],
    );
  }
}
