import 'package:flutter/material.dart';
import 'package:pineamite/configs/configs.dart';

class ProgressBar extends StatelessWidget {
  final int earned;
  final int toGo;

  const ProgressBar({super.key, required this.earned, required this.toGo});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 3,
      child: ClipRRect(
        borderRadius: 3.radius(),
        child: Row(
          children: [
            Expanded(
              flex: earned.toInt(),
              child: Container(color: AppColors.primary),
            ),
            Expanded(
              flex: toGo.toInt(),
              child: Container(color: AppColors.secondary),
            ),
          ],
        ),
      ),
    );
  }
}
