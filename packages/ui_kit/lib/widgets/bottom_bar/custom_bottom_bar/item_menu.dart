part of '../bottom_bar.dart';

class ItemMenu extends StatelessWidget {
  const ItemMenu({
    required this.isSelected,
    required this.icon,
    required this.onTap,
    super.key,
  });

  final bool isSelected;
  final SvgGenImage icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.0).add(
          EdgeInsetsGeometry.only(
            bottom: 16.0,
          ),
        ),
        color: isSelected ? AppColors.color99001F : AppColors.color99001F.withAlpha(20),
        child: icon.svg(
          height: 30.0,
          width: 30.0,
          colorFilter: ColorFilter.mode(
            isSelected ? AppColors.white : AppColors.color99001F,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
