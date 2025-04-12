# Utils

A Swift package providing useful utilities for iOS and macOS applications, focusing on device information, screen metrics, and application versioning.

## Features

### Device Information
- Device type detection (iPhone SE, iPad)
- Cross-platform screen width access
- Safe area insets utilities

### Version Management
- Release version number access
- Build version number access
- Build date information

### Screen Utilities
- Screen width access for iOS and macOS
- Device-specific checks (iPhone SE, iPad)
- Safe area insets handling

## Installation

### Swift Package Manager

Add the following dependency to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/yourusername/Utils.git", from: "1.0.0")
]
```

## Usage

### Bundle Extensions

Access application version information:

```swift
import Utils

// Get release version
let version = Bundle.main.releaseVersionNumber

// Get build number
let build = Bundle.main.buildVersionNumber

// Get build date
let buildDate = Bundle.main.buildDate
```

### Device Screen Information

Check device characteristics and screen metrics:

```swift
import Utils

// Get screen width
let screenWidth = DeviceScreen.width

// Check if device is iPhone SE
let isIPhoneSE = DeviceScreen.isiPhoneSE

// Check if device is iPad
let isIPad = DeviceScreen.isiPad
```

### Safe Area Insets (iOS)

Access safe area insets:

```swift
import Utils

#if os(iOS)
let safeAreaInsets = UIApplication.safeAreaInsets
let isIPhoneSE = UIApplication.isiPhoneSE
#endif
```

## Platform Support

- iOS 16.0+
- macOS 14+

## Requirements

- Swift 6

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This package is released under the MIT license. See [LICENSE](LICENSE) for details.

## Author

Fabricio Sffair
