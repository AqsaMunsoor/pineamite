part of '../home.dart';

final List<RaceCardData> _liveStreamRaces = [
  RaceCardData(
    image: Assets.images.car.car2.provider(),
    title: 'Rali Serras De Fafe - Europe 2025',
  ),
  RaceCardData(
    image: Assets.images.car.car3.provider(),
    title: 'Rali Serras De Fafe - Europe 2025 - Historic Special Ra...',
  ),
  RaceCardData(
    image: Assets.images.car.car4.provider(),
    title: 'Safari Rally Kenya 2025',
  ),
];

final List<RaceCardData> _highlightRaces = [
  RaceCardData(
    image: Assets.images.car.car8.provider(),
    title: 'Rali Serras De Fafe',
    mentions: const [
      DriverMention(
        name: 'Maximilian Fischer',
        backgroundColor: AppColors.secondary,
      ),
      DriverMention(
        name: 'Elena Martinez',
        backgroundColor: AppColors.primaryLighter,
      ),
    ],
  ),
  RaceCardData(
    image: Assets.images.car.car7.provider(),
    title: 'Rali Serras De Fafe',
    mentions: const [
      DriverMention(
        name: 'Maximilian Fischer',
        backgroundColor: AppColors.secondary,
      ),
      DriverMention(
        name: 'Elena Martinez',
        backgroundColor: AppColors.primaryLighter,
      ),
    ],
  ),
  RaceCardData(
    image: Assets.images.car.car6.provider(),
    title: 'Rali Serras De Fafe',
    mentions: const [
      DriverMention(
        name: 'Maximilian Fischer',
        backgroundColor: AppColors.secondary,
      ),
      DriverMention(
        name: 'Elena Martinez',
        backgroundColor: AppColors.primaryLighter,
      ),
    ],
  ),
];

final List<RaceCardData> _favoriteRaces = [
  RaceCardData(
    image: Assets.images.car.car8.provider(),
    title: 'Rali Serras De Fafe',
    mentions: const [
      DriverMention(
        name: 'Maximilian Fischer',
        backgroundColor: AppColors.secondary,
      ),
      DriverMention(
        name: 'Elena Martinez',
        backgroundColor: AppColors.primaryLighter,
      ),
    ],
  ),
  RaceCardData(
    image: Assets.images.car.car7.provider(),
    title: 'Rali Serras De Fafe',
    mentions: const [
      DriverMention(
        name: 'Maximilian Fischer',
        backgroundColor: AppColors.secondary,
      ),
      DriverMention(
        name: 'Elena Martinez',
        backgroundColor: AppColors.primaryLighter,
      ),
    ],
  ),
  RaceCardData(
    image: Assets.images.car.car6.provider(),
    title: 'Rali Serras De Fafe',
    mentions: const [
      DriverMention(
        name: 'Maximilian Fischer',
        backgroundColor: AppColors.secondary,
      ),
      DriverMention(
        name: 'Elena Martinez',
        backgroundColor: AppColors.primaryLighter,
      ),
    ],
  ),
];
