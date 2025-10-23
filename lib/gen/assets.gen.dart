// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Dermis.png
  AssetGenImage get dermis => const AssetGenImage('assets/images/Dermis.png');

  /// File path: assets/images/Ear.png
  AssetGenImage get ear => const AssetGenImage('assets/images/Ear.png');

  /// File path: assets/images/Heart_1.png
  AssetGenImage get heart1 => const AssetGenImage('assets/images/Heart_1.png');

  /// File path: assets/images/Joint.png
  AssetGenImage get joint => const AssetGenImage('assets/images/Joint.png');

  /// File path: assets/images/Lungs.png
  AssetGenImage get lungs => const AssetGenImage('assets/images/Lungs.png');

  /// File path: assets/images/Star.png
  AssetGenImage get star => const AssetGenImage('assets/images/Star.png');

  /// File path: assets/images/Stethoscope.png
  AssetGenImage get stethoscope =>
      const AssetGenImage('assets/images/Stethoscope.png');

  /// File path: assets/images/Stomach.png
  AssetGenImage get stomach => const AssetGenImage('assets/images/Stomach.png');

  /// File path: assets/images/Teeth.png
  AssetGenImage get teeth => const AssetGenImage('assets/images/Teeth.png');

  /// File path: assets/images/building.png
  AssetGenImage get building =>
      const AssetGenImage('assets/images/building.png');

  /// File path: assets/images/doctor.png
  AssetGenImage get doctor => const AssetGenImage('assets/images/doctor.png');

  /// File path: assets/images/doctor1.png
  AssetGenImage get doctor1 => const AssetGenImage('assets/images/doctor1.png');

  /// File path: assets/images/doctor2.png
  AssetGenImage get doctor2 => const AssetGenImage('assets/images/doctor2.png');

  /// File path: assets/images/doctor3.png
  AssetGenImage get doctor3 => const AssetGenImage('assets/images/doctor3.png');

  /// File path: assets/images/hospital_bulding.png
  AssetGenImage get hospitalBulding =>
      const AssetGenImage('assets/images/hospital_bulding.png');

  /// File path: assets/images/menu-board.png
  AssetGenImage get menuBoard =>
      const AssetGenImage('assets/images/menu-board.png');

  /// File path: assets/images/tile_background.png
  AssetGenImage get tileBackground =>
      const AssetGenImage('assets/images/tile_background.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    dermis,
    ear,
    heart1,
    joint,
    lungs,
    star,
    stethoscope,
    stomach,
    teeth,
    building,
    doctor,
    doctor1,
    doctor2,
    doctor3,
    hospitalBulding,
    menuBoard,
    tileBackground,
  ];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/bx-check-shield.svg.svg
  SvgGenImage get bxCheckShieldSvg =>
      const SvgGenImage('assets/svg/bx-check-shield.svg.svg');

  /// File path: assets/svg/calendar-tick.svg
  SvgGenImage get calendarTick =>
      const SvgGenImage('assets/svg/calendar-tick.svg');

  /// File path: assets/svg/calendar.svg
  SvgGenImage get calendar => const SvgGenImage('assets/svg/calendar.svg');

  /// File path: assets/svg/clock.svg
  SvgGenImage get clock => const SvgGenImage('assets/svg/clock.svg');

  /// File path: assets/svg/location.svg
  SvgGenImage get location => const SvgGenImage('assets/svg/location.svg');

  /// File path: assets/svg/map.svg
  SvgGenImage get map => const SvgGenImage('assets/svg/map.svg');

  /// File path: assets/svg/search_icon.svg
  SvgGenImage get searchIcon => const SvgGenImage('assets/svg/search_icon.svg');

  /// File path: assets/svg/search_trailing_icon.svg
  SvgGenImage get searchTrailingIcon =>
      const SvgGenImage('assets/svg/search_trailing_icon.svg');

  /// File path: assets/svg/send.svg
  SvgGenImage get send => const SvgGenImage('assets/svg/send.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    bxCheckShieldSvg,
    calendarTick,
    calendar,
    clock,
    location,
    map,
    searchIcon,
    searchTrailingIcon,
    send,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
        colorMapper: colorMapper,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
