import SwiftUI

public protocol PluginInterfaceProtocol: Identifiable {
    var pluginName: String {get}
    var id: UUID {get}
    
    //MARK: Life cycle
    func setup() -> Void
    func onUse() -> Void
    func onCreate() -> Void
    func onDestroy() -> Void
    func cleanUp() -> Void
    
    //MARK: Body
    associatedtype Body: View
    @ViewBuilder @MainActor var view: Self.Body { get }
    
    //MARK: Settings
    associatedtype Settings: View
    @ViewBuilder @MainActor var settings: Self.Settings { get }
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
    
    var settings: some View {
        EmptyView()
    }
    
    var view: some View {
        EmptyView()
    }
}
