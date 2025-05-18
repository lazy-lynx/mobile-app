part of 'bottom_bar.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      decoration: BoxDecoration(
        color: AppColors.color99001F.withAlpha(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Assets.icons.home.svg(),
          ),
          Expanded(
            child: Assets.icons.history.svg(),
          ),
          Expanded(
            child: Assets.icons.settings.svg(),
          )
        ],
      ),
    );
  }
}
