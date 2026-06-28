//
//  Holiday.swift
//  CheckidayKit
//
//  Created by Leon Stigter on 20/10/2025.
//

import Foundation

/// A single holiday entry with a display name and a link to its details page.
public struct Holiday: Codable, Hashable, Sendable {
    public var name: String
    public var url: URL

    public init(name: String, url: URL) {
        self.name = name
        self.url = url
    }
}
