//
//  File.swift
//
//
//  Created by Qiwei Li on 1/21/23.
//

import Foundation
import SwiftUI

/**
 The PluginBuilder class is used to build the plugin.
 */
open class PluginBuilder {
    public init() {}

    /**
     Build the plugin. This method should be overridden by the plugin builder.
     */
    open func build(fileUtils _: FileUtilsProtocol, nsPanelUtils _: NSPanelUtilsProtocol) -> any PluginInterfaceProtocol {
        fatalError("You should override this method.")
    }
}
