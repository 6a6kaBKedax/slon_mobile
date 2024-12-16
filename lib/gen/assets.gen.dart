/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsButtonsGen {
  const $AssetsButtonsGen();

  /// File path: assets/buttons/back_forward_button.svg
  SvgGenImage get backForwardButton =>
      const SvgGenImage('assets/buttons/back_forward_button.svg');

  /// File path: assets/buttons/connect_button.svg
  SvgGenImage get connectButton =>
      const SvgGenImage('assets/buttons/connect_button.svg');

  /// File path: assets/buttons/connect_button2.svg
  SvgGenImage get connectButton2 =>
      const SvgGenImage('assets/buttons/connect_button2.svg');

  /// File path: assets/buttons/settings_button.svg
  SvgGenImage get settingsButton =>
      const SvgGenImage('assets/buttons/settings_button.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [backForwardButton, connectButton, connectButton2, settingsButton];
}

class $AssetsWavesGen {
  const $AssetsWavesGen();

  /// File path: assets/waves/wave2.svg
  SvgGenImage get wave2 => const SvgGenImage('assets/waves/wave2.svg');

  /// File path: assets/waves/wave4.svg
  SvgGenImage get wave4 => const SvgGenImage('assets/waves/wave4.svg');

  /// File path: assets/waves/wave6.svg
  SvgGenImage get wave6 => const SvgGenImage('assets/waves/wave6.svg');

  /// File path: assets/waves/wave7.svg
  SvgGenImage get wave7 => const SvgGenImage('assets/waves/wave7.svg');

  /// File path: assets/waves/wave8.svg
  SvgGenImage get wave8 => const SvgGenImage('assets/waves/wave8.svg');

  /// List of all assets
  List<SvgGenImage> get values => [wave2, wave4, wave6, wave7, wave8];
}

class Assets {
  Assets._();

  static const SvgGenImage allertIcon = SvgGenImage('assets/allert_icon.svg');
  static const $AssetsButtonsGen buttons = $AssetsButtonsGen();
  static const SvgGenImage gradient = SvgGenImage('assets/gradient.svg');
  static const SvgGenImage logo = SvgGenImage('assets/logo.svg');
  static const SvgGenImage slon = SvgGenImage('assets/slon.svg');
  static const AssetGenImage slonPng = AssetGenImage('assets/slon_png.png');
  static const $AssetsWavesGen waves = $AssetsWavesGen();

  /// List of all assets
  static List<dynamic> get values =>
      [allertIcon, gradient, logo, slon, slonPng];
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

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

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

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
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
