//
//  ProjectManifest.swift
//
//
//  Created by Qiwei Li on 1/23/23.
//

import Foundation

public struct ProjectManifest: Codable, Hashable {
    /**
     The display name of the project
     */
    public var displayName: String
    /**
     The unique bundle identifier of the project
     */
    public var bundleIdentifier: String
    /**
     The name of the author of the project
     */
    public var author: String
    /**
     A short description of the project
     */
    public var shortDescription: String
    /**
     The repository URL where the project can be found
     */
    public var repository: String
    /**
     An array of keywords associated with the project
     */
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
