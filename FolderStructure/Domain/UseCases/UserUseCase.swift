//
//  UserUseCase.swift
//  FolderStructure
//
//  Created by David Mejia on 8/05/24.
//

import Foundation

class UserUseCase {
    func fetchUsers(completion: @escaping ([User]) -> Void) {
        guard let url = URL(string: Endpoint.users) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            if let data = data {
                do {
                    let users = try JSONDecoder().decode([User].self, from: data)
                    completion(users)
                } catch {
                    print("Error decoding JSON: \(error)")
                }
            }
        }.resume()
    }
}
