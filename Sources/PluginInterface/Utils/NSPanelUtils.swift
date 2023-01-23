//
//  File.swift
//  
//
//  Created by Qiwei Li on 1/23/23.
//

import Foundation
import AppKit

/**
 This protocol defines a list of helper methods to interact with NSPanel
 */
public protocol NSPanelUtilsProtocol {
    /**
     Displays a confirm dialog and returns a boolean indicating the user's choice.
     - parameter title: The title of the dialog.
     - parameter subtitle: The subtitle of the dialog.
     - parameter confirmButtonText: The text displayed on the confirm button.
     - parameter cancelButtonText: The text displayed on the cancel button.
     - parameter alertStyle: The style displayed on the dialog
     - returns: A boolean value indicating if the user confirmed (true) or cancelled (false).
     */
    func confirm(title: String, subtitle: String, confirmButtonText: String?, cancelButtonText: String?, alertStyle: NSAlert.Style?) -> Bool
    
    /**
     Displays an alert dialog with a title, subtitle and an "OK" button.
     - parameter title: The title of the dialog.
     - parameter subtitle: The subtitle of the dialog.
     - parameter okButtonText: The text displayed on the "OK" button. If not provided, the default text will be used.
     - parameter alertStyle: The style displayed on the dialog
     */
    func alert(title: String, subtitle: String, okButtonText: String?, alertStyle: NSAlert.Style?) -> Void
}
