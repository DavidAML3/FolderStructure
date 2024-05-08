//
//  Post.swift
//  FolderStructure
//
//  Created by David Mejia on 8/05/24.
//

struct Post: Codable, Identifiable {
    let id: Int
    let title: String
    let body: String
}
