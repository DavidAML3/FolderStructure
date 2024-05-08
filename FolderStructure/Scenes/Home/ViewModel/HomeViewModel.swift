//
//  HomeViewModel.swift
//  FolderStructure
//
//  Created by David Mejia on 8/05/24.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var users: [User] = []
    
    func fetchUsers() {
        UserRepositoryImpl().fetchUsers { users in
            DispatchQueue.main.async {
                self.users = users
            }
        }
    }
}
