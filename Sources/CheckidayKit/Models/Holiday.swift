//
//  Holiday.swift
//  CheckidayKit
//
//  Created by Leon Stigter on 20/10/2025.
//


import Foundation

public struct Holiday: Codable, Hashable, Sendable {
    public var name: String
    public var url: String

    public init(name: String, url: String) {
        self.name = name
        self.url = url
    }
}
