import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:pineamite/configs/configs.dart';
import 'package:pineamite/ui/widgets/cards/race/race_card.dart';

class RaceSlider extends StatelessWidget {
  final String title;
  final List<RaceCardData> races;
  final Widget? leading;
  final VoidCallback? onViewAllPressed;
  final String? viewAllText;

  const RaceSlider({
    super.key,
    required this.title,
    required this.races,
    this.leading,
    this.onViewAllPressed,
    this.viewAllText,
  });

  @override
  Widget build(BuildContext context) {
    if (races.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [_buildHeader(), Space.y.t20, _buildRaceCardList()],
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: Space.p.horizontal.t20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (leading != null) ...[leading!, Space.x.t04],
              Text(
                title,
                style: AppText.t1 + FontWeight.bold + AppColors.textLight,
              ),
            ],
          ),
          if (onViewAllPressed != null)
            GestureDetector(
              onTap: onViewAllPressed,
              child: Row(
                children: [
                  Text(
                    viewAllText ?? 'View All',
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
      ),
    );
  }

  Widget _buildRaceCardList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,

      padding: Space.p.horizontal.t20,
      child: Row(
        children: List.generate(races.length, (index) {
          final raceData = races[index];

          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 0 : 10),
            child: RaceCard(
              image: raceData.image,
              title: raceData.title,
              mentions: raceData.mentions,
            ),
          );
        }),
      ),
    );
  }
}
