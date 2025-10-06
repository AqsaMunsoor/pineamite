part of '../../home.dart';

class _Points extends StatelessWidget {
  final double height;
  const _Points({required this.height});

  @override
  Widget build(BuildContext context) {
    return SkewedContainer(
      height: height,
      color: AppColors.primaryDark.withValues(alpha: 0.7),
      child: Padding(
        padding: const EdgeInsets.only(right: 15, left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '2500',
              style:
                  AppText.b2.copyWith(fontFamily: FontFamily.sFProDisplay) +
                  AppColors.textLight +
                  FontWeight.w500,
            ),
            Text(
              'points earned',
              style:
                  AppText.t3.copyWith(fontFamily: FontFamily.sFProDisplay) +
                  AppColors.textLight +
                  FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}
