//
//  UserRepository.swift
//  FolderStructure
//
//  Created by David Mejia on 8/05/24.
//

protocol UserRepository {
    func fetchUsers(completion: @escaping ([User]) -> Void)
}
