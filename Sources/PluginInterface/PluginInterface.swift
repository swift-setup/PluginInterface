public protocol PluginInterfaceProtocol {
    func run() -> String
}

open class PluginBuilder {
    public init() {}

    open func build() -> PluginInterfaceProtocol {
        fatalError("You should override this method.")
    }
}
