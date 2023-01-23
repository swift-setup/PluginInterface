//
//  File.swift
//  
//
//  Created by Qiwei Li on 1/21/23.
//

import Foundation
import SwiftUI

open class PluginBuilder {
    public init() {}

    open func build(fileUtils: FileUtilsProtocol, nsPanelUtils: NSPanelUtilsProtocol) -> any PluginInterfaceProtocol {
        fatalError("You should override this method.")
    }
}
