//
//  PostUseCase.swift
//  FolderStructure
//
//  Created by David Mejia on 8/05/24.
//

import Foundation

class PostUseCase {
    func fetchPosts(for userId: Int, completion: @escaping ([Post]) -> Void) {
        guard let url = URL(string: Endpoint.posts(for: userId)) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            if let data = data {
                do {
                    let posts = try JSONDecoder().decode([Post].self, from: data)
                    completion(posts)
                } catch {
                    print("Error decoding JSON: \(error)")
                }
            }
        }.resume()
    }
}
