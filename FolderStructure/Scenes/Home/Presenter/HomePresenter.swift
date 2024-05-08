//
//  HomePresenter.swift
//  FolderStructure
//
//  Created by David Mejia on 8/05/24.
//

import Combine

class HomePresenter: ObservableObject {
    func present(users: [User]) -> [User] {
        return users.map { user in
            User(id: user.id, name: user.name, username: user.username)
        }
    }
}
