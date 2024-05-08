//
//  PostRepositoryImpl.swift
//  FolderStructure
//
//  Created by David Mejia on 8/05/24.
//

class PostRepositoryImpl: PostRepository {
    func fetchPosts(for userId: Int, completion: @escaping ([Post]) -> Void) {
        PostUseCase().fetchPosts(for: userId, completion: completion)
    }
}
