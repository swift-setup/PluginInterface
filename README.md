![logo](./images/Logo.png)

# PluginInterface

This package provides an interface that all plugins for the SwiftSetup app must implement. The interface includes several life cycle methods that are called at different stages of the plugin's existence, as well as properties for the plugin's main view and settings view.

## Installation

To install the PluginInterface package, add it as a dependency in your SwiftSetup app's Package.swift file.

```swift
dependencies: [
    .package(url: "https://github.com/swift-setup/PluginInterface.git", from: "1.0.0")
],
products: [
    .library(
        name: "TestPlugin",
        type: .dynamic,
        targets: ["TestPlugin"]),
],
```

Then, import the package in any file where you want to use it.

```swift
import PluginInterface
```

## Usage

To create a plugin for the SwiftSetup app, create a new class or struct that conforms to the PluginInterfaceProtocol. This protocol requires the implementation of several life cycle methods, as well as the plugin's main view and settings view.

```swift
class MyPlugin: PluginInterfaceProtocol {

}
```

## Building

To build the PluginInterface package, run the following command in the root directory of the package.

```bash
swift build -c release
```

## License

This package is licensed under the MIT license. See the LICENSE file for more info.

## Author

This package was created by [sirily11](https://github.com/sirily11).
