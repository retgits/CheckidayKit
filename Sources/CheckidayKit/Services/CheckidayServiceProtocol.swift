//
//  CheckidayServiceProtocol.swift
//  CheckidayKit
//
//  Created by Leon Stigter on 20/10/2025.
//

import Foundation

/// Protocol for fetching holidays from the Checkiday API.
/// Enables dependency injection for testing and previews.
public protocol CheckidayServiceProtocol {
    func fetchHolidays(for date: Date) async throws -> Checkiday
}
