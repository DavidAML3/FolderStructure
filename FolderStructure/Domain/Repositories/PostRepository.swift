//
//  PostRepository.swift
//  FolderStructure
//
//  Created by David Mejia on 8/05/24.
//

protocol PostRepository {
    func fetchPosts(for userId: Int, completion: @escaping ([Post]) -> Void)
}
