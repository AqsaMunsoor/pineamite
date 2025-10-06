part of '../../home.dart';

class _Menu extends StatelessWidget {
  final double height;
  final double width;
  const _Menu({required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return SkewedContainer(
      width: width,
      height: height,
      color: AppColors.primaryDark.withValues(alpha: 0.8),
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0, top: 50),
        child: Row(
          children: [
            Assets.icons.menu.image(width: 20, height: 20),
            Space.x.t10,
            Assets.logoText.image(width: 120),
          ],
        ),
      ),
    );
  }
}
