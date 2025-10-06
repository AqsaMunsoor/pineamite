part of '../../home.dart';

class _TopBar extends StatelessWidget {
  const _TopBar();

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Positioned(
          left: -5,
          top: 0,
          child: SkewedContainer(
            width: 230,
            height: 110,
            color: AppColors.primaryDark.withValues(alpha: 0.2),
            blurAmount: 4,

            child: Container(),
          ),
        ),

        const Positioned(
          left: -15,
          top: 0,
          child: _Menu(width: 220, height: 110),
        ),

        const Positioned(
          right: -10,
          top: 70,
          child: NotificationWidget(height: 45),
        ),
        const Positioned(right: -7, top: 70, child: _Points(height: 45)),
      ],
    );
  }
}

class SkewedContainer extends StatelessWidget {
  final double? width;
  final double height;
  final Color color;
  final Widget child;
  final double skew;
  final double blurAmount;

  const SkewedContainer({
    super.key,
    this.width,
    required this.height,
    required this.color,
    required this.child,
    this.skew = -0.2,
    this.blurAmount = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: Transform(
              transform: Matrix4.skewX(skew),

              child: ClipRRect(
                borderRadius: BorderRadius.zero,
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: blurAmount,
                    sigmaY: blurAmount,
                  ),

                  child: Container(decoration: BoxDecoration(color: color)),
                ),
              ),
            ),
          ),

          child,
        ],
      ),
    );
  }
}
