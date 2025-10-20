//
//  CheckidayServiceTests.swift
//  CheckidayKit
//
//  Created by Leon Stigter on 20/10/2025.
//

import XCTest
@testable import CheckidayKit

final class CheckidayServiceTests: XCTestCase {

    func testDecodingMockJSON() throws {
        let jsonString = """
        {
          "error": "none",
          "date": "01/01/2024",
          "holidays": [
            { "name": "Apple Gifting Day", "url": "https://www.checkiday.com/apple" }
          ],
          "number": 19,
          "lastUpdate": 1729746250
        }
        """
        let data = Data(jsonString.utf8)
        let decoded = try JSONDecoder().decode(Checkiday.self, from: data)

        XCTAssertEqual(decoded.error, "none")
        XCTAssertEqual(decoded.holidays.first?.name, "Apple Gifting Day")
    }

    func testInvalidJSONThrows() {
        let badJSON = "{ invalid }".data(using: .utf8)!
        XCTAssertThrowsError(try JSONDecoder().decode(Checkiday.self, from: badJSON))
    }

    func testFetchHolidaysWithMockService() async throws {
        let service = CheckidayServiceMock()
        let result = try await service.fetchHolidays(for: .now)
        XCTAssertEqual(result.holidays.count, 1)
        XCTAssertEqual(result.holidays.first?.name, "Mock Holiday")
    }
    
}

// MARK: - Mock
actor CheckidayServiceMock: CheckidayServiceProtocol {
    func fetchHolidays(for date: Date) async throws -> Checkiday {
        return Checkiday(
            error: "none",
            date: "01/01/1970",
            holidays: [Holiday(name: "Mock Holiday", url: "https://mock.example")],
            number: 1,
            lastUpdate: 0
        )
    }
}
