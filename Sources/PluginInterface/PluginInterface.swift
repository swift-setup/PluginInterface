import SwiftUI

public protocol PluginInterfaceProtocol {
    var pluginName: String {get}
    
    func setup() -> Void
    func onCreate() -> Void
    func onDestroy() -> Void
    func cleanUp() -> Void
}

//MARK: Life cycle methods
public extension PluginInterfaceProtocol {
    func setup() {
        
    }
    
    func onCreate() {
        
    }
    
    func onDestroy() {
        
    }
    
    func cleanUp() {
        
    }
}
