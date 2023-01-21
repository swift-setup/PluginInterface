//
//  File.swift
//  
//
//  Created by Qiwei Li on 1/22/23.
//

import Foundation
import SwiftUI

/**
 This is the renderer for preference pannel
 */
public protocol PluginSettingsInterface: PluginInterfaceProtocol {
    associatedtype Settings: View
    @ViewBuilder @MainActor var settings: Self.Settings { get }
}
