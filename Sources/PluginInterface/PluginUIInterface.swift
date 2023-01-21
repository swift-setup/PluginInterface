//
//  File.swift
//  
//
//  Created by Qiwei Li on 1/22/23.
//

import Foundation
import SwiftUI

public protocol PluginUIInterfaceProtocol: PluginInterfaceProtocol {
    associatedtype Body: View
    @ViewBuilder @MainActor var view: Self.Body { get }
}
