/// Enum representing the device mode for the wrapper
enum DeviceMode {
  /// Mobile device mode (360x690)
  mobile,
  
  /// Tablet device mode (768x1024)
  tablet,
}

/// Extension to provide additional properties for DeviceMode
extension DeviceModeExtension on DeviceMode {
  /// Get the display name for the device mode
  String get displayName {
    switch (this) {
      case DeviceMode.mobile:
        return 'Mobile';
      case DeviceMode.tablet:
        return 'Tablet';
    }
  }

  /// Get the icon for the device mode
  String get iconName {
    switch (this) {
      case DeviceMode.mobile:
        return 'phone_android';
      case DeviceMode.tablet:
        return 'tablet_android';
    }
  }
}
