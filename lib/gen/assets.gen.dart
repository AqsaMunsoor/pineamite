/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/home.png
  AssetGenImage get home => const AssetGenImage('assets/icons/home.png');

  /// File path: assets/icons/live.png
  AssetGenImage get live => const AssetGenImage('assets/icons/live.png');

  /// File path: assets/icons/meet.png
  AssetGenImage get meet => const AssetGenImage('assets/icons/meet.png');

  /// File path: assets/icons/menu.png
  AssetGenImage get menu => const AssetGenImage('assets/icons/menu.png');

  /// File path: assets/icons/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/icons/profile.png');

  /// File path: assets/icons/progress.png
  AssetGenImage get progress =>
      const AssetGenImage('assets/icons/progress.png');

  /// File path: assets/icons/score.png
  AssetGenImage get score => const AssetGenImage('assets/icons/score.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    home,
    live,
    meet,
    menu,
    profile,
    progress,
    score,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/car
  $AssetsImagesCarGen get car => const $AssetsImagesCarGen();

  /// Directory path: assets/images/charts
  $AssetsImagesChartsGen get charts => const $AssetsImagesChartsGen();

  /// Directory path: assets/images/people
  $AssetsImagesPeopleGen get people => const $AssetsImagesPeopleGen();

  /// Directory path: assets/images/sponsors
  $AssetsImagesSponsorsGen get sponsors => const $AssetsImagesSponsorsGen();
}

class $AssetsImagesCarGen {
  const $AssetsImagesCarGen();

  /// File path: assets/images/car/car1.jpg
  AssetGenImage get car1 => const AssetGenImage('assets/images/car/car1.jpg');

  /// File path: assets/images/car/car2.jpg
  AssetGenImage get car2 => const AssetGenImage('assets/images/car/car2.jpg');

  /// File path: assets/images/car/car3.jpg
  AssetGenImage get car3 => const AssetGenImage('assets/images/car/car3.jpg');

  /// File path: assets/images/car/car4.jpg
  AssetGenImage get car4 => const AssetGenImage('assets/images/car/car4.jpg');

  /// File path: assets/images/car/car5.jpg
  AssetGenImage get car5 => const AssetGenImage('assets/images/car/car5.jpg');

  /// File path: assets/images/car/car6.jpg
  AssetGenImage get car6 => const AssetGenImage('assets/images/car/car6.jpg');

  /// File path: assets/images/car/car7.jpg
  AssetGenImage get car7 => const AssetGenImage('assets/images/car/car7.jpg');

  /// File path: assets/images/car/car8.jpg
  AssetGenImage get car8 => const AssetGenImage('assets/images/car/car8.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
    car1,
    car2,
    car3,
    car4,
    car5,
    car6,
    car7,
    car8,
  ];
}

class $AssetsImagesChartsGen {
  const $AssetsImagesChartsGen();

  /// File path: assets/images/charts/chart1.png
  AssetGenImage get chart1 =>
      const AssetGenImage('assets/images/charts/chart1.png');

  /// File path: assets/images/charts/chart2.png
  AssetGenImage get chart2 =>
      const AssetGenImage('assets/images/charts/chart2.png');

  /// File path: assets/images/charts/chart3.png
  AssetGenImage get chart3 =>
      const AssetGenImage('assets/images/charts/chart3.png');

  /// List of all assets
  List<AssetGenImage> get values => [chart1, chart2, chart3];
}

class $AssetsImagesPeopleGen {
  const $AssetsImagesPeopleGen();

  /// File path: assets/images/people/person1.jpg
  AssetGenImage get person1 =>
      const AssetGenImage('assets/images/people/person1.jpg');

  /// File path: assets/images/people/person2.jpg
  AssetGenImage get person2 =>
      const AssetGenImage('assets/images/people/person2.jpg');

  /// File path: assets/images/people/person3.jpg
  AssetGenImage get person3 =>
      const AssetGenImage('assets/images/people/person3.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [person1, person2, person3];
}

class $AssetsImagesSponsorsGen {
  const $AssetsImagesSponsorsGen();

  /// File path: assets/images/sponsors/1.png
  AssetGenImage get a1 => const AssetGenImage('assets/images/sponsors/1.png');

  /// File path: assets/images/sponsors/2.png
  AssetGenImage get a2 => const AssetGenImage('assets/images/sponsors/2.png');

  /// File path: assets/images/sponsors/3.png
  AssetGenImage get a3 => const AssetGenImage('assets/images/sponsors/3.png');

  /// List of all assets
  List<AssetGenImage> get values => [a1, a2, a3];
}

class Assets {
  const Assets._();

  static const AssetGenImage appIcon = AssetGenImage('assets/app_icon.png');
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const AssetGenImage logoText = AssetGenImage('assets/logo_text.png');

  /// List of all assets
  static List<AssetGenImage> get values => [appIcon, logoText];
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
