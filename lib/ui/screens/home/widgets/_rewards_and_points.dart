part of '../home.dart';

class _RewardsAndPoints extends StatelessWidget {
  const _RewardsAndPoints();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(padding: Space.p.horizontal.t20, child: _buildHeader()),
        Space.y.t20,

        Stack(
          alignment: Alignment.topCenter,
          children: [
            ClipRRect(
              child: SizedBox(
                height: 230,
                width: double.infinity,
                child: Assets.images.car.car5.image(fit: BoxFit.cover),
              ),
            ),
            _buildGradientOverlay(),
            _buildPlayButton(),
            _buildBottomContent(),
          ],
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Rewards & Points',
          style: AppText.t1 + FontWeight.bold + AppColors.textLight,
        ),
        GestureDetector(
          onTap: () {},
          child: Row(
            children: [
              Text(
                'View Details',
                style: AppText.b1 + FontWeight.bold + AppColors.textLight,
              ),
              Space.x.t04,
              const Icon(
                LucideIcons.chevron_right,
                size: 18,
                color: AppColors.textLight,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildGradientOverlay() {
    return Positioned.fill(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black.withValues(alpha: 0.0),
              Colors.black.withValues(alpha: 0.2),
              Colors.black.withValues(alpha: 0.8),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.0, 0.5, 1.0],
          ),
        ),
      ),
    );
  }

  Widget _buildPlayButton() {
    return Positioned(
      top: 70,
      child: Container(
        width: 40,
        height: 40,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: AppColors.primaryGradient,
        ),
        child: const Icon(
          Icons.play_arrow_rounded,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }

  Widget _buildBottomContent() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Monthly Prize Winner - Ride Along',
              style: AppText.t2 + FontWeight.bold + AppColors.textLight,
            ),
            Space.y.t15,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [_buildWinnerChip(), _buildPrizeLink()],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWinnerChip() {
    return Container(
      padding: const EdgeInsets.only(right: 10, left: 6, top: 6, bottom: 6),
      decoration: BoxDecoration(
        color: AppColors.chipBackground,
        borderRadius: 30.radius(),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 12,
            backgroundImage: Assets.images.people.person2.image().image,
            backgroundColor: AppColors.grey,
          ),
          Space.x.t08,
          Text(
            'Emily Carter',
            style: AppText.b2 + FontWeight.w500 + AppColors.textLight,
          ),
          Space.x.t04,
          const Icon(
            LucideIcons.chevron_right,
            color: AppColors.grey,
            size: 16,
          ),
        ],
      ),
    );
  }

  Widget _buildPrizeLink() {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Text(
            "This Month's Prize",
            style: AppText.b2 + FontWeight.w500 + Colors.white,
          ),
          Space.x.t04,
          const Icon(LucideIcons.chevron_right, color: Colors.white, size: 16),
        ],
      ),
    );
  }
}
