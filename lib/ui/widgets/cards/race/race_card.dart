import 'package:flutter/material.dart';
import 'package:pineamite/configs/configs.dart';
import 'package:pineamite/gen/fonts.gen.dart';

part '_model.dart';

class RaceCard extends StatelessWidget {
  final ImageProvider image;
  final String title;
  final List<DriverMention>? mentions;

  const RaceCard({
    super.key,
    required this.image,
    required this.title,
    this.mentions,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final cardWidth = (screenWidth - 16 - 16 - 12) / 2.2;
    return SizedBox(
      width: cardWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [_buildImageArea(cardWidth: cardWidth), _buildCardTitle()],
      ),
    );
  }

  Widget _buildImageArea({required double cardWidth}) {
    final hasMentions = mentions != null && mentions!.isNotEmpty;
    return hasMentions
        ? _buildImageWithOverlay(cardWidth: cardWidth)
        : _buildCardImage(cardWidth: cardWidth);
  }

  Widget _buildImageWithOverlay({required double cardWidth}) {
    return Stack(
      children: [
        _buildCardImage(cardWidth: cardWidth),
        Positioned(
          right: 3,
          top: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children:
                mentions!
                    .map(
                      (mention) => Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: _buildDriverTag(mention: mention),
                      ),
                    )
                    .toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildCardImage({required double cardWidth}) {
    return ClipRRect(
      borderRadius: 12.radius(),
      child: Image(
        image: image,
        fit: BoxFit.cover,
        width: cardWidth,
        height: 96.0,
        semanticLabel: 'Race car for $title',
      ),
    );
  }

  Widget _buildDriverTag({required DriverMention mention}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      decoration: BoxDecoration(
        color: mention.backgroundColor,
        borderRadius: 24.radius(),
      ),
      child: Text(
        mention.name,
        style:
            AppText.b3.copyWith(fontFamily: FontFamily.sFProDisplay) +
            AppColors.textDark,
      ),
    );
  }

  Widget _buildCardTitle() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Text(
        title,
        style: AppText.b1 + FontWeight.bold + AppColors.textLighter,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
