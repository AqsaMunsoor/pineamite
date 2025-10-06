import 'package:flutter/material.dart';
import 'package:pineamite/configs/configs.dart';
import 'package:pineamite/gen/assets.gen.dart';
import 'package:pineamite/painters/bottom_bar.dart';
import 'package:pineamite/router/routes.dart';
import 'dart:ui' as ui;

part '_data.dart';
part '_model.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final currentPath = ModalRoute.of(context)!.settings.name;

    return SizedBox(
      height: 115,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned.fill(
            child: ClipPath(
              clipper: BottomBarClipper(),
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: CustomPaint(
                  size: const Size(double.infinity, 100),
                  painter: BottomBarPainter(),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 25,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ..._tabs.sublist(0, 2).map((tab) {
                  final isActive = tab.path == currentPath;
                  return _BottomBarItem(tab: tab, isActive: isActive);
                }),
                const SizedBox(width: 80),
                ..._tabs.sublist(2).map((tab) {
                  final isActive = tab.path == currentPath;
                  return _BottomBarItem(tab: tab, isActive: isActive);
                }),
              ],
            ),
          ),
          Positioned(
            bottom: 35,
            child: GestureDetector(
              onTap: () {
                AppRoutes.home.pushReplace(context);
              },
              child: Container(
                padding: const EdgeInsets.all(4),
                child: Container(
                  width: 65,
                  height: 65,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: AppColors.primaryGradient,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Assets.icons.meet.image(
                      width: 28,
                      height: 28,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomBarItem extends StatelessWidget {
  final BottomBarItem tab;
  final bool isActive;

  const _BottomBarItem({required this.tab, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        if (isActive) return;
        tab.path.pushReplace(context);
      },
      icon: tab.asset.image(
        width: 28,
        height: 28,
        color: isActive ? Colors.white : Colors.white38,
      ),
    );
  }
}
