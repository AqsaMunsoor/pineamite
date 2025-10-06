part of '../../home.dart';

class NotificationWidget extends StatelessWidget {
  final double height;
  const NotificationWidget({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SkewedContainer(
      height: height,
      width: 125,
      color: AppColors.primaryDark.withValues(alpha: 0.3),

      child: const Padding(
        padding: EdgeInsets.only(right: 105),
        child: Icon(LucideIcons.bell_dot, color: Colors.white, size: 18),
      ),
    );
  }
}
