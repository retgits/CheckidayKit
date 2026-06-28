//
//  Checkiday.swift
//  CheckidayKit
//
//  Created by Leon Stigter on 20/10/2025.
//

/// Represents the API response from checkiday.com.
/// Contains today's holidays and metadata about the request.
public struct Checkiday: Codable, Equatable, Sendable {
    public var error: String
    public var date: String
    public var holidays: [Holiday]
    public var number: Int
    public var lastUpdate: Int

    /// Whether the API response indicates success (no error).
    public var isSuccess: Bool {
        error == "none"
    }

    public init(
        error: String,
        date: String,
        holidays: [Holiday],
        number: Int,
        lastUpdate: Int
    ) {
        self.error = error
        self.date = date
        self.holidays = holidays
        self.number = number
        self.lastUpdate = lastUpdate
    }
}
