import 'package:flutter/material.dart';
import 'device_mode.dart';

/// Configuration class for device dimensions and styling
class DeviceConfig {
  /// Width of the device frame
  final double width;
  
  /// Height of the device frame
  final double height;
  
  /// Border radius for the device frame
  final double borderRadius;
  
  /// Border width for the device frame
  final double borderWidth;
  
  /// Border color for the device frame
  final Color borderColor;
  
  /// Background color behind the device frame
  final Color backgroundColor;
  
  /// Shadow configuration for the device frame
  final List<BoxShadow> shadows;
  
  /// Whether to show the device notch (for mobile)
  final bool showNotch;
  
  /// Whether to show the home indicator
  final bool showHomeIndicator;

  const DeviceConfig({
    required this.width,
    required this.height,
    this.borderRadius = 55.0,
    this.borderWidth = 5.0,
    this.borderColor = const Color(0xFF1C1C1E),
    this.backgroundColor = const Color(0xFF1A1A2E),
    this.shadows = const [
      BoxShadow(
        color: Color(0x50000000),
        blurRadius: 40,
        spreadRadius: 2,
        offset: Offset(0, 20),
      ),
      BoxShadow(
        color: Color(0x15000000),
        blurRadius: 80,
        spreadRadius: 5,
        offset: Offset(0, 40),
      ),
    ],
    this.showNotch = true,
    this.showHomeIndicator = true,
  });

  /// iPhone 17 Pro configuration (based on 1206x2622 ratio)
  /// Scaled to fit screen: 393x852 (standard iPhone Pro logical size)
  static const DeviceConfig mobile = DeviceConfig(
    width: 393,
    height: 852,
    borderRadius: 55.0,
    borderWidth: 5.0,
    showNotch: true,
    showHomeIndicator: true,
  );

  /// iPad Gen 11 configuration (based on 2360x1640 ratio)
  /// Portrait mode scaled: 820x1180
  static const DeviceConfig tablet = DeviceConfig(
    width: 820,
    height: 1180,
    borderRadius: 24.0,
    borderWidth: 6.0,
    showNotch: false,
    showHomeIndicator: true,
  );

  /// Get configuration for a specific device mode
  static DeviceConfig fromMode(DeviceMode mode) {
    switch (mode) {
      case DeviceMode.mobile:
        return mobile;
      case DeviceMode.tablet:
        return tablet;
    }
  }

  /// Create a copy with modified properties
  DeviceConfig copyWith({
    double? width,
    double? height,
    double? borderRadius,
    double? borderWidth,
    Color? borderColor,
    Color? backgroundColor,
    List<BoxShadow>? shadows,
    bool? showNotch,
    bool? showHomeIndicator,
  }) {
    return DeviceConfig(
      width: width ?? this.width,
      height: height ?? this.height,
      borderRadius: borderRadius ?? this.borderRadius,
      borderWidth: borderWidth ?? this.borderWidth,
      borderColor: borderColor ?? this.borderColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      shadows: shadows ?? this.shadows,
      showNotch: showNotch ?? this.showNotch,
      showHomeIndicator: showHomeIndicator ?? this.showHomeIndicator,
    );
  }
}
