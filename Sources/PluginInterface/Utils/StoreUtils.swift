//
//  File.swift
//  
//
//  Created by Qiwei Li on 1/25/23.
//

import Foundation

public protocol StoreUtilsProtocol {
    /**
     Sets a value for the provided key in the search list entry for the receiver's suite name in the current user and any host. The value is also asynchronously stored persistently, where it is made available to other processes.
     - parameter value: The value to store. If nil is passed, the value for the provided key is removed.
     - parameter defaultName: The key for the value being stored.
     - parameter plugin: The caller plugin. If nil is passed, the shared space will be used.
     */
    func set(_ value: Any?, forKey defaultName: String, from plugin: (any PluginInterfaceProtocol)?)
    
    /**
     Removes the value for the provided key from the search list entry for the receiver's suite name.
     - parameter defaultName: The key for the value being removed.
     - parameter plugin: The caller plugin. If nil is passed, the shared space will be used.
     */
    func removeObject(forKey defaultName: String, from plugin: (any PluginInterfaceProtocol)?)
    
    /**
     Returns the value for the provided key in the search list entry for the receiver's suite name.
     - parameter defaultName: The key for the value being retrieved.
     - parameter plugin: The caller plugin. If nil is passed, the shared space will be used.
     - returns: The value for the provided key, or nil if the key is not present in the search list.
     */
    func get<T>(forKey defaultName: String, from plugin: (any PluginInterfaceProtocol)?) -> T?
}
