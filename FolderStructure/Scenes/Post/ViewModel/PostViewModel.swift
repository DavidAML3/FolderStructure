//
//  PostViewModel.swift
//  FolderStructure
//
//  Created by David Mejia on 8/05/24.
//

import SwiftUI

class PostViewModel: ObservableObject {
    @Published var posts: [Post] = []
    
    func fetchPosts(for userId: Int) {
        PostRepositoryImpl().fetchPosts(for: userId) { posts in
            DispatchQueue.main.async {
                self.posts = posts
            }
        }
    }
}
