part of './_base.dart';

class PointsProgressCard extends StatelessWidget {
  const PointsProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    const double pointsEarned = 1500;
    const double pointsToGo = 500;
    const totalPoints = pointsEarned + pointsToGo;

    return _BaseCard(
      backgroundGradient: LinearGradient(
        colors: [
          AppColors.textDark.withValues(alpha: 0.8),
          AppColors.textDark.withValues(alpha: 0.5),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      borderColor: Colors.white.withValues(alpha: 0.1),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildLevelRow(
            label: 'Current Level',
            value: 'Fan',
            labelStyle:
                AppText.b3.copyWith(fontFamily: FontFamily.sFProDisplay) +
                FontWeight.w500 +
                AppColors.primaryLighter,
            valueStyle: AppText.t2 + AppColors.text + FontWeight.bold,
          ),
          Space.y.t12,
          _buildProgressBar(
            earned: pointsEarned,
            toGo: pointsToGo,
            total: totalPoints,
          ),
          Space.y.t10,
          _buildLevelRow(
            label: 'Next Level',
            value: 'Avid Fan',
            labelStyle:
                AppText.b3.copyWith(fontFamily: FontFamily.sFProDisplay) +
                FontWeight.w500 +
                AppColors.wraningText,
            valueStyle: AppText.t2 + AppColors.text + FontWeight.bold,
          ),
        ],
      ),
    );
  }

  Widget _buildLevelRow({
    required String label,
    required String value,
    required TextStyle labelStyle,
    required TextStyle valueStyle,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(label, style: labelStyle),
        Text(value, style: valueStyle),
      ],
    );
  }

  Widget _buildProgressBar({
    required double earned,
    required double toGo,
    required double total,
  }) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              earned.toInt().toString(),
              style:
                  AppText.b3.copyWith(fontFamily: FontFamily.sFProDisplay) +
                  FontWeight.w500 +
                  AppColors.primary,
            ),
            Text(
              toGo.toInt().toString(),
              style:
                  AppText.b3.copyWith(fontFamily: FontFamily.sFProDisplay) +
                  FontWeight.w500 +
                  AppColors.secondary,
            ),
          ],
        ),
        Space.y.t06,

        ProgressBar(earned: earned.toInt(), toGo: toGo.toInt()),
        Space.y.t06,

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'points earned',
              style:
                  AppText.b3.copyWith(fontFamily: FontFamily.sFProDisplay) +
                  FontWeight.w500 +
                  AppColors.textGrey,
            ),
            Text(
              'points to go',
              style:
                  AppText.b3.copyWith(fontFamily: FontFamily.sFProDisplay) +
                  FontWeight.w500 +
                  AppColors.textGrey,
            ),
          ],
        ),
      ],
    );
  }
}
