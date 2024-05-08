//
//  EndPoints.swift
//  FolderStructure
//
//  Created by David Mejia on 8/05/24.
//

import Foundation

enum Endpoint {
    static let baseURL = "https://jsonplaceholder.typicode.com"
    
    static let users = "\(baseURL)/users"
    static func posts(for userId: Int) -> String {
        return "\(baseURL)/posts?userId=\(userId)"
    }
}
