import 'package:flutter/material.dart';
import 'package:pineamite/configs/configs.dart';
import 'package:pineamite/gen/assets.gen.dart';

class Sponsers extends StatelessWidget {
  const Sponsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Assets.images.sponsors.a1.image(height: 60)),
        Space.x.t20,
        Expanded(child: Assets.images.sponsors.a2.image(height: 60)),
        Space.x.t20,
        Expanded(child: Assets.images.sponsors.a3.image(height: 60)),
      ],
    );
  }
}
