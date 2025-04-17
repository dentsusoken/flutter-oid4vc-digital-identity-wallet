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

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/bluetooth-connect.svg
  SvgGenImage get bluetoothConnect => const SvgGenImage('assets/icons/bluetooth-connect.svg');

  /// File path: assets/icons/ic-edit.svg
  SvgGenImage get icEdit => const SvgGenImage('assets/icons/ic-edit.svg');

  /// File path: assets/icons/ic-id-stroke.svg
  SvgGenImage get icIdStroke => const SvgGenImage('assets/icons/ic-id-stroke.svg');

  /// File path: assets/icons/ic-id.svg
  SvgGenImage get icId => const SvgGenImage('assets/icons/ic-id.svg');

  /// File path: assets/icons/ic-logo.svg
  SvgGenImage get icLogo => const SvgGenImage('assets/icons/ic-logo.svg');

  /// File path: assets/icons/ic-more.svg
  SvgGenImage get icMore => const SvgGenImage('assets/icons/ic-more.svg');

  /// File path: assets/icons/ic-nfc.svg
  SvgGenImage get icNfc => const SvgGenImage('assets/icons/ic-nfc.svg');

  /// File path: assets/icons/ic-qr-scanner.svg
  SvgGenImage get icQrScanner => const SvgGenImage('assets/icons/ic-qr-scanner.svg');

  /// File path: assets/icons/ic-user.svg
  SvgGenImage get icUser => const SvgGenImage('assets/icons/ic-user.svg');

  /// File path: assets/icons/ic-warning.svg
  SvgGenImage get icWarning => const SvgGenImage('assets/icons/ic-warning.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    bluetoothConnect,
    icEdit,
    icIdStroke,
    icId,
    icLogo,
    icMore,
    icNfc,
    icQrScanner,
    icUser,
    icWarning,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}}) : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}}) : _isVecFormat = true;

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
      loader = _vg.AssetBytesLoader(_assetName, assetBundle: bundle, packageName: package);
    } else {
      loader = _svg.SvgAssetLoader(_assetName, assetBundle: bundle, packageName: package, theme: theme);
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
      colorFilter: colorFilter ?? (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
