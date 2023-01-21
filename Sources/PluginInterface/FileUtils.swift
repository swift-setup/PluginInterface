//
//  File.swift
//  
//
//  Created by Qiwei Li on 1/22/23.
//

import Foundation

/**
 Protocol defines a list of file utils that can let plugin to interact with the file system
 */
public protocol FileUtils {
    /**
     After calling this method, software will popup a folder select dialog and will change the current working dir
     upon the user's selection. May throw if user did't pick one.
     */
    func updateCurrentWorkSpace() throws -> URL
    
    /**
     Performs a shallow search of the current working directory and returns the paths of any contained items.
     - returns paths: An array of NSString objects, each of which identifies a file, directory, or symbolic link contained in path. Returns an empty array if the directory exists but has no contents.
     */
    func list() throws -> [String]
    
    /**
     Open the file based on the path. Will throw error if file cannot be read.
     */
    func openFile(at path: URL) throws -> Data
    
    /**
     Write content to the path. Will create/overide file if not exists/alread exists
     */
    func writeFile(at path: URL, with content: String) throws -> Void
    
    /**
     Create nested dirs
     */
    func createDirs(at path: URL) throws -> Void
    
    /**
     Delete content at the path. Will show a confirm dialog.
     */
    func delete(at path: URL) throws -> Void
}
