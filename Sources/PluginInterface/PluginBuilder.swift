//
//  File.swift
//  
//
//  Created by Qiwei Li on 1/21/23.
//

import Foundation
import SwiftUI

open class PluginBuilder<T> {
    public init() {}

    open func build() -> any PluginInterfaceProtocol {
        fatalError("You should override this method.")
    }
}
