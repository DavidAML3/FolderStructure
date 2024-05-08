//
//  UserRepositoryImpl.swift
//  FolderStructure
//
//  Created by David Mejia on 8/05/24.
//

class UserRepositoryImpl: UserRepository {
    func fetchUsers(completion: @escaping ([User]) -> Void) {
        UserUseCase().fetchUsers(completion: completion)
    }
}
