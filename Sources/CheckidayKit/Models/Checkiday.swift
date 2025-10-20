//
//  Checkiday.swift
//  CheckidayKit
//
//  Created by Leon Stigter on 20/10/2025.
//

public struct Checkiday: Codable, Equatable, Sendable {
    public var error: String
    public var date: String
    public var holidays: [Holiday]
    public var number: Int
    public var lastUpdate: Int

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
