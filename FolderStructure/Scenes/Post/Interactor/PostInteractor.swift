//
//  PostInteractor.swift
//  FolderStructure
//
//  Created by David Mejia on 8/05/24.
//

import Combine

class PostInteractor: ObservableObject {
    func fetchPosts(for userId: Int, completion: @escaping ([Post]) -> Void) {
        PostRepositoryImpl().fetchPosts(for: userId, completion: completion)
    }
}
