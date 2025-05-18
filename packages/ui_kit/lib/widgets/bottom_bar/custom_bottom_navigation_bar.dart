part of 'bottom_bar.dart';

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
    final double height = 70;

    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: onTapHome,
            child: Container(
              height: height,
              color: selectedTab == Menu.home ? AppColors.color99001F : AppColors.color99001F.withAlpha(20),
              child: Center(
                child: Assets.icons.home.svg(
                  colorFilter: ColorFilter.mode(
                    selectedTab != Menu.home ? AppColors.color99001F : AppColors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: onTapHistory,
            child: Container(
              height: height,
              color: selectedTab == Menu.history ? AppColors.color99001F : AppColors.color99001F.withAlpha(20),
              child: Center(
                child: Assets.icons.history.svg(
                  colorFilter: ColorFilter.mode(
                    selectedTab != Menu.history ? AppColors.color99001F : AppColors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: onTapSettings,
            child: Container(
              height: height,
              color: selectedTab == Menu.settings ? AppColors.color99001F : AppColors.color99001F.withAlpha(20),
              child: Center(
                child: Assets.icons.settings.svg(
                  colorFilter: ColorFilter.mode(
                    selectedTab != Menu.settings ? AppColors.color99001F : AppColors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
