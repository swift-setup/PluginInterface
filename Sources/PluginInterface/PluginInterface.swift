import SwiftUI

public protocol PluginInterfaceProtocol: Identifiable {
    var pluginName: String {get}
    var id: UUID {get}
    
    func setup() -> Void
    func onUse() -> Void
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
    
    func onUse() {
        
    }
}
