//
//  ProjectManifest.swift
//
//
//  Created by Qiwei Li on 1/23/23.
//

import Foundation

public protocol ProjectManifestProtocol {
    /**
     The display name of the project
     */
    var displayName: String {get set}
    /**
     The unique bundle identifier of the project
     */
    var bundleIdentifier: String {get set}
    /**
     The name of the author of the project
     */
    var author: String {get set}
    /**
     A short description of the project
     */
    var shortDescription: String {get set}
    /**
     The repository URL where the project can be found
     */
    var repository: String {get set}
    /**
     An array of keywords associated with the project
     */
    var keywords: [String] {get set}
}


public struct ProjectManifest: ProjectManifestProtocol, Codable, Hashable {
    public var displayName: String
    public var bundleIdentifier: String
    public var author: String
    public var shortDescription: String
    public var repository: String
    public var keywords: [String]
    
    /**
     Initializes a new instance of the struct with the given properties.
     - parameter displayName: The display name of the project
     - parameter bundleIdentifier: The unique bundle identifier of the project
     - parameter author: The name of the author of the project
     - parameter shortDescription: A short description of the project
     - parameter repository: The repository URL where the project can be found
     - parameter keywords: An array of keywords associated with the project
     */
    public init(displayName: String, bundleIdentifier: String, author: String, shortDescription: String, repository: String, keywords: [String]) {
        self.displayName = displayName
        self.bundleIdentifier = bundleIdentifier
        self.author = author
        self.shortDescription = shortDescription
        self.repository = repository
        self.keywords = keywords
    }
}
