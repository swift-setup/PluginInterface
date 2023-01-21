import SwiftUI

public protocol PluginInterfaceProtocol {
    func run() -> String
}


public protocol PluginUIInterfaceProtocol: PluginInterfaceProtocol {
    associatedtype Body: View
    @ViewBuilder @MainActor var view: Self.Body { get }
}


open class PluginBuilder<T> {
    public init() {}

    open func build() -> any PluginInterfaceProtocol {
        fatalError("You should override this method.")
    }
}
