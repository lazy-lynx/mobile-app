part of 'gradient_button.dart';

class CustomGradientButton extends StatefulWidget {
  const CustomGradientButton({
    required this.title,
    required this.onTap,
    super.key,
  });

  final String title;
  final VoidCallback onTap;

  @override
  State<CustomGradientButton> createState() => _CustomGradientButtonState();
}

class _CustomGradientButtonState extends State<CustomGradientButton> {
  double _scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        _scale = 0.99;
        setState(() {});
      },
      onTapUp: (_) {
        _scale = 1.0;
        setState(() {});
        widget.onTap.call();
      },
      onTapCancel: () {
        _scale = 1.0;
        setState(() {});
      },
      child: AnimatedScale(
        duration: Duration(
          milliseconds: 100,
        ),
        scale: _scale,
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            gradient: LinearGradient(
              colors: [
                AppColors.color3B0099,
                AppColors.color2600FF,
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: Text(
            widget.title,
            style: AppTextStyles.roboto20w700,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
