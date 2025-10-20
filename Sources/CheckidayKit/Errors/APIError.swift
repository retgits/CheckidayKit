//
//  APIError.swift
//  CheckidayKit
//
//  Created by Leon Stigter on 20/10/2025.
//


import Foundation

public enum APIError: Error {
    case invalidURL
    case networkError(Error)
    case invalidResponse
    case invalidStatusCode(Int)
}