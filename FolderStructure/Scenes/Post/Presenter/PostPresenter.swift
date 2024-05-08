//
//  PostPresenter.swift
//  FolderStructure
//
//  Created by David Mejia on 8/05/24.
//

import Combine

class PostPresenter: ObservableObject {
    func present(posts: [Post]) -> [Post] {
        return posts.map { post in
            Post(id: post.id, title: post.title, body: post.body)
        }
    }
}
