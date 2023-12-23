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

  /// File path: assets/icons/airBnb.png
  AssetGenImage get airBnb => const AssetGenImage('assets/icons/airBnb.png');

  /// File path: assets/icons/amazon.png
  AssetGenImage get amazon => const AssetGenImage('assets/icons/amazon.png');

  /// File path: assets/icons/apple.png
  AssetGenImage get apple => const AssetGenImage('assets/icons/apple.png');

  /// File path: assets/icons/bankOfAmerica.png
  AssetGenImage get bankOfAmerica =>
      const AssetGenImage('assets/icons/bankOfAmerica.png');

  /// File path: assets/icons/goldMan.png
  AssetGenImage get goldMan => const AssetGenImage('assets/icons/goldMan.png');

  /// File path: assets/icons/google.png
  AssetGenImage get google => const AssetGenImage('assets/icons/google.png');

  /// File path: assets/icons/linkedin.png
  AssetGenImage get linkedin =>
      const AssetGenImage('assets/icons/linkedin.png');

  /// File path: assets/icons/meta.png
  AssetGenImage get meta => const AssetGenImage('assets/icons/meta.png');

  /// File path: assets/icons/microsoft.png
  AssetGenImage get microsoft =>
      const AssetGenImage('assets/icons/microsoft.png');

  /// File path: assets/icons/morgan.png
  AssetGenImage get morgan => const AssetGenImage('assets/icons/morgan.png');

  /// File path: assets/icons/netflix.png
  AssetGenImage get netflix => const AssetGenImage('assets/icons/netflix.png');

  /// File path: assets/icons/pepsi.png
  AssetGenImage get pepsi => const AssetGenImage('assets/icons/pepsi.png');

  /// File path: assets/icons/sendIcon.png
  AssetGenImage get sendIcon =>
      const AssetGenImage('assets/icons/sendIcon.png');

  /// File path: assets/icons/spotify.png
  AssetGenImage get spotify => const AssetGenImage('assets/icons/spotify.png');

  /// File path: assets/icons/swiggy.png
  AssetGenImage get swiggy => const AssetGenImage('assets/icons/swiggy.png');

  /// File path: assets/icons/teasla.png
  AssetGenImage get teasla => const AssetGenImage('assets/icons/teasla.png');

  /// File path: assets/icons/uber.png
  AssetGenImage get uber => const AssetGenImage('assets/icons/uber.png');

  /// File path: assets/icons/userImage.png
  AssetGenImage get userImage =>
      const AssetGenImage('assets/icons/userImage.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        airBnb,
        amazon,
        apple,
        bankOfAmerica,
        goldMan,
        google,
        linkedin,
        meta,
        microsoft,
        morgan,
        netflix,
        pepsi,
        sendIcon,
        spotify,
        swiggy,
        teasla,
        uber,
        userImage
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/user.jpg
  AssetGenImage get user => const AssetGenImage('assets/images/user.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [user];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
