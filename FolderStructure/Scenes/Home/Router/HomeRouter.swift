//
//  HomeRouter.swift
//  FolderStructure
//
//  Created by David Mejia on 8/05/24.
//

import SwiftUI
import Combine

class HomeRouter: ObservableObject {
    func navigateToPostView(for user: User) -> some View {
        return PostView(userId: user.id)
    }
}
