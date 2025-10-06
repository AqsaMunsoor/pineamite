import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:pineamite/configs/configs.dart';
import 'package:pineamite/gen/assets.gen.dart';
import 'package:pineamite/gen/fonts.gen.dart';
import 'package:pineamite/ui/widgets/progress_bar/linear_progress_bar.dart';

part './points_progress_card.dart';
part './leadership_card.dart';

class _BaseCard extends StatelessWidget {
  final Widget child;

  final Gradient backgroundGradient;

  final Color borderColor;

  final EdgeInsets? padding;

  const _BaseCard({
    required this.child,
    required this.backgroundGradient,
    required this.borderColor,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Space.p.horizontal.t20,
      child: Container(
        width: double.infinity,

        padding: padding ?? (Space.p.horizontal.t20 + Space.p.vertical.t15),
        decoration: BoxDecoration(
          gradient: backgroundGradient,
          borderRadius: 20.radius(),
          border: Border.all(color: borderColor, width: 1),
        ),
        child: child,
      ),
    );
  }
}
