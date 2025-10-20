//
//  CheckidayService.swift
//  CheckidayKit
//
//  Created by Leon Stigter on 20/10/2025.
//


import Foundation

public actor CheckidayService: CheckidayServiceProtocol {
    public init() {}

    public func fetchHolidays(for date: Date) async throws -> Checkiday {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        let dateString = formatter.string(from: date)
        let encodedDate = dateString.replacingOccurrences(of: "/", with: "%2F")

        guard let url = URL(string: "https://www.checkiday.com/api/3/?d=\(encodedDate)") else {
            throw APIError.invalidURL
        }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        let (data, response) = try await URLSession.shared.data(for: request)

        guard let httpResponse = response as? HTTPURLResponse else {
            throw APIError.invalidResponse
        }

        guard httpResponse.statusCode == 200 else {
            throw APIError.invalidStatusCode(httpResponse.statusCode)
        }

        return try JSONDecoder().decode(Checkiday.self, from: data)
    }
}
