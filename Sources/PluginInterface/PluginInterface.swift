import SwiftUI

/**
 PluginInterfaceProtocol defines the interface that all plugins must implement.
 It conforms to the Identifiable protocol, which requires the implementation of an 'id' property.
 */
public protocol PluginInterfaceProtocol: Identifiable {
    /**
     The id property is a unique identifier generated at runtime, used to identify the plugin.
      */
    var id: UUID { get }

    /**
     Project manifest defines the manifest of the project. Will be used to store information about the project.
     */
    var manifest: ProjectManifest { get }

    // MARK: Life cycle

    /**
     The setup() method is called when the plugin is loaded, it is the first method that is called. It is called before onCreate().
     */
    func setup() -> Void
    /**
     The onUse() method is called when the plugin is in use, it is called after onCreate().
     */
    func onUse() -> Void
    /**
      The onCreate() method is called when the plugin is created.
     */
    func onCreate() -> Void
    /**
     The onDestroy() method is called when the plugin is destroyed.
     */
    func onDestroy() -> Void
    /**
     The cleanUp() method is called when the plugin is cleaned up.
     */
    func cleanUp() -> Void

    // MARK: Body

    associatedtype Body: View
    /**
     The view property is a SwiftUI view that is used to display the plugin in the main view.
     */
    @ViewBuilder @MainActor var view: Self.Body { get }

    // MARK: Settings

    associatedtype Settings: View
    /**
     The settings property is a SwiftUI view that is used to display the plugin settings in the settings view.
     */
    @ViewBuilder @MainActor var settings: Self.Settings { get }
}

// MARK: Life cycle methods

public extension PluginInterfaceProtocol {
    func setup() {}

    func onCreate() {}

    func onDestroy() {}

    func cleanUp() {}

    func onUse() {}

    var settings: some View {
        EmptyView()
    }

    var view: some View {
        EmptyView()
    }
}
