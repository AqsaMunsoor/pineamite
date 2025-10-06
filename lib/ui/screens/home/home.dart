import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:pineamite/configs/configs.dart';
import 'package:pineamite/gen/assets.gen.dart';
import 'package:pineamite/gen/fonts.gen.dart';
import 'package:pineamite/ui/widgets/cards/experience/_base.dart';
import 'package:pineamite/ui/widgets/cards/race/race_card.dart';
import 'package:pineamite/ui/widgets/footer/sponsers.dart';
import 'package:pineamite/ui/widgets/screen/screen.dart';
import 'package:pineamite/ui/widgets/sliders/race_slider.dart';

part 'widgets/_body.dart';
part 'widgets/_data.dart';
part 'widgets/_rewards_and_points.dart';
part 'widgets/_top_bar/_menu.dart';
part 'widgets/_top_bar/_notification.dart';
part 'widgets/_top_bar/_points.dart';
part 'widgets/_top_bar/_top_bar.dart';
part 'widgets/insights.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Body();
  }
}
