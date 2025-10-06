part of 'race_card.dart';

@immutable
class DriverMention {
  final String name;
  final Color backgroundColor;

  const DriverMention({required this.name, required this.backgroundColor});
}

@immutable
class RaceCardData {
  final ImageProvider image;
  final String title;
  final List<DriverMention>? mentions;

  const RaceCardData({required this.image, required this.title, this.mentions});
}
