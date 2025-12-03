# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2025-12-03

### Added
- Initial release of Device Wrapper
- **DeviceWrapper** widget for wrapping Flutter apps in device frames
- **DeviceMode** enum with `mobile` (iPhone 17 Pro) and `tablet` (iPad Gen 11) modes
- **DeviceConfig** class for customizing device appearance
- Auto-scaling to fit device within browser/window size
- Dynamic Island with camera lens effect for iPhone 17 Pro style
- Titanium gradient frame design with realistic bezels
- Mode toggle button with smooth animations
- Side buttons (power, volume, action button) for realistic appearance
- Home indicator bar
- Grid pattern background
- Device info label showing current mode and dimensions
- Support for custom configurations (dimensions, colors, shadows)
- `enabled` flag to disable wrapper for production builds
- `onModeChanged` callback for mode switch events

### Device Configurations
- **Mobile (iPhone 17 Pro)**: 393×852, border radius 55px, border width 5px
- **Tablet (iPad Gen 11)**: 820×1180, border radius 24px, border width 6px
