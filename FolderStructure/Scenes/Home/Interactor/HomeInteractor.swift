//
//  HomeInteractor.swift
//  FolderStructure
//
//  Created by David Mejia on 8/05/24.
//

import Combine

class HomeInteractor: ObservableObject {
    func fetchUsers(completion: @escaping ([User]) -> Void) {
        UserRepositoryImpl().fetchUsers(completion: completion)
    }
}
