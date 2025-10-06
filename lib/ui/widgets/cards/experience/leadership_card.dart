part of './_base.dart';

class LeaderboardCard extends StatelessWidget {
  const LeaderboardCard({super.key});

  @override
  Widget build(BuildContext context) {
    return _BaseCard(
      backgroundGradient: AppColors.cardBackgroundGradient,
      borderColor: AppColors.cardBorder,
      padding: const EdgeInsets.only(left: 15, top: 20, right: 8),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [_buildTextContent(), _buildPodiumContent()],
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: 35,
              height: 35,
              decoration: const BoxDecoration(
                color: AppColors.iconDark,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                LucideIcons.arrow_up_right,
                color: AppColors.iconLight,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextContent() {
    return Expanded(
      child: Padding(
        padding: Space.p.bottom.t10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Leaderboard',
              style: AppText.t1 + FontWeight.bold + AppColors.text,
            ),
            Space.y.t08,
            Text(
              'Check top contributors to Pineamite and your own ranking worldwide',
              style:
                  AppText.b3.copyWith(fontFamily: FontFamily.sFProDisplay) +
                  AppColors.textLighter,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPodiumContent() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _buildPodiumWithAvatar(
              Assets.images.charts.chart1.path,
              Assets.images.people.person1.path,
              60,
              AppColors.secondary,
            ),
            Space.x.t04,
            _buildPodiumWithAvatar(
              Assets.images.charts.chart2.path,
              Assets.images.people.person2.path,
              80,
              AppColors.primaryLight,
            ),
            Space.x.t04,
            _buildPodiumWithAvatar(
              Assets.images.charts.chart3.path,
              Assets.images.people.person3.path,
              40,
              AppColors.chipBackground,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPodiumWithAvatar(
    String podiumAsset,
    String avatarAsset,
    double height,
    Color borderColor,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CircleAvatar(
          radius: 18,
          backgroundColor: borderColor,
          child: CircleAvatar(
            radius: 16,
            backgroundImage: AssetImage(avatarAsset),
          ),
        ),
        Space.y.t04,
        Image.asset(podiumAsset, width: 45, height: height, fit: BoxFit.fill),
      ],
    );
  }
}
