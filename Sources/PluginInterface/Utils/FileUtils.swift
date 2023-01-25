//
//  File.swift
//  
//
//  Created by Qiwei Li on 1/22/23.
//

import Foundation

/**
 Protocol defines a set of file management methods that allows plugins to interact with the file system.
 */
public protocol FileUtilsProtocol: ObservableObject {
    /**
     This is a computed property that returns the current workspace URL.
     */
    var currentWorkSpace: URL? { get }
    
    /**
     This is a computed property that returns the current workspace path as a string.
     */
    var currentWorkSpacePath: String? { get }
    
    /**
     Displays a folder selection dialog and updates the current working directory based on the user's selection.
     Throws an error if the user does not make a selection.
     */
    func updateCurrentWorkSpace() throws -> URL
    
    /**
     Performs a shallow search of the current working directory and returns the paths of any contained items.
     - Returns: An array of strings, each of which identifies a file, directory, or symbolic link contained in the current working directory. Returns an empty array if the directory exists but has no contents.
     */
    func list() throws -> [String]
    
    /**
     Opens the file located at the specified path.
     - Parameter path: The file URL.
     - Returns: The contents of the file in the form of Data
     - Throws: An error if the file cannot be read.
     */
    func openFile(at path: URL) throws -> Data
    
    /**
     Opens the file located at the specified path.
     - Parameter path: The path relative to the working space's root.
     - Returns: The contents of the file in the form of Data
     - Throws: An error if the file cannot be read.
     */
    func openFile(at path: String) throws -> Data
    
    /**
     Writes the specified content to the file located at the specified path.
     If the file does not exist, it will be created. If the file already exists, it will be overwritten.
     - Parameter path: The file path relative to the working space's root.
     - Parameter content: The content to be written to the file.
     - Throws: An error if the file cannot be written to.
     */
    func writeFile(at path: String, with content: String) throws -> Void
    
    /**
     Writes the specified content to the file located at the specified path.
     If the file does not exist, it will be created. If the file already exists, it will be overwritten.
     - Parameter path: The file url
     - Parameter content: The content to be written to the file.
     - Throws: An error if the file cannot be written to.
     */
    func writeFile(at path: URL, with content: String) throws -> Void
    
    /**
     Creates nested directories at the specified path.
     - Parameter path: The directory URL.
     - Throws: An error if the directories cannot be created.
     */
    func createDirs(at path: URL) throws -> Void
    
    /**
     Deletes the content at the specified path. A confirmation dialog will be displayed.
     - Parameter path: The file/directory URL.
     - Throws: An error if the content cannot be deleted.
     */
    func delete(at path: URL) throws -> Void
    
    /**
     Deletes the content at the specified path. A confirmation dialog will be displayed.
     - Parameter path: The file/directory path relative to the working space's root.
     - Throws: An error if the content cannot be deleted.
     */
    func delete(at path: String) throws -> Void
}
