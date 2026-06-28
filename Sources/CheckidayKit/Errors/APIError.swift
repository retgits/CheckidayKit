//
//  APIError.swift
//  CheckidayKit
//
//  Created by Leon Stigter on 20/10/2025.
//

import Foundation

/// Errors that can occur when communicating with the Checkiday API.
public enum APIError: Error {
    /// The constructed URL was invalid.
    case invalidURL
    /// A network-level error occurred (no connectivity, timeout, etc.).
    case networkError(Error)
    /// The response was not an HTTP response.
    case invalidResponse
    /// The server returned a non-200 status code.
    case invalidStatusCode(Int)
}
