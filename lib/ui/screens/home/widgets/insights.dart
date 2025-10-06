part of '../home.dart';

class _Insights extends StatelessWidget {
  const _Insights();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        SizedBox(
          height: screenHeight * 0.45,
          width: double.infinity,
          child: Assets.images.car.car1.image(fit: BoxFit.cover),
        ),

        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Center(
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 4.0),
                child: Container(
                  width: double.infinity,

                  padding: Space.p.horizontal.t16 + Space.p.vertical.t10,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0x03000000),
                        AppColors.textDark.withValues(alpha: 0.8),
                      ],
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Saturday Morning Recap',
                              style:
                                  AppText.h2 + AppColors.text + FontWeight.w700,
                            ),
                            Space.y.t04,
                            Row(
                              children: [
                                Text(
                                  'Delfi Rally Estonia 2025',
                                  style:
                                      AppText.b2.copyWith(
                                        fontFamily: FontFamily.sFProDisplay,
                                      ) +
                                      FontWeight.w500 +
                                      AppColors.textLighter,
                                ),
                                Padding(
                                  padding: Space.p.horizontal.t08,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.primary,
                                      borderRadius: 100.radius(),
                                    ),
                                    height: 16,
                                    width: 2,
                                  ),
                                ),
                                Text(
                                  '5 min',
                                  style:
                                      AppText.b2.copyWith(
                                        fontFamily: FontFamily.sFProDisplay,
                                      ) +
                                      FontWeight.w500 +
                                      AppColors.textLighter,
                                ),
                              ],
                            ),
                            Space.y.t12,
                            Row(
                              children: [
                                Container(
                                  height: 6,
                                  width: 32,
                                  decoration: BoxDecoration(
                                    color: AppColors.primary.withValues(
                                      alpha: 0.75,
                                    ),
                                    borderRadius: 3.radius(),
                                  ),
                                ),
                                ...List.generate(
                                  4,
                                  (index) => Container(
                                    height: 6,
                                    width: 6,
                                    margin: const EdgeInsets.only(left: 6),
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Space.x.t10,
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          gradient: AppColors.primaryGradient,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
