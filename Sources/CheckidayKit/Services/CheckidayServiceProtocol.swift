//
//  CheckidayServiceProtocol.swift
//  CheckidayKit
//
//  Created by Leon Stigter on 20/10/2025.
//


import Foundation

public protocol CheckidayServiceProtocol {
    func fetchHolidays(for date: Date) async throws -> Checkiday
}