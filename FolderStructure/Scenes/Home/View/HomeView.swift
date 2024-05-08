//
//  HomeView.swift
//  FolderStructure
//
//  Created by David Mejia on 8/05/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var interactor = HomeInteractor()
    @StateObject var presenter = HomePresenter()
    @StateObject var router = HomeRouter()
    
    @State private var users: [User] = []
    
    var body: some View {
        NavigationView {
            List(users) { user in
                NavigationLink(destination: PostView(userId: user.id)) {
                    VStack(alignment: .leading) {
                        Text(user.name)
                            .font(.headline)
                            .foregroundColor(PastelColors.pastelBlue)
                        Text("@\(user.username)")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            .navigationTitle("Users")
        }
        .onAppear {
            interactor.fetchUsers { users in
                self.users = presenter.present(users: users)
            }
        }
    }
}

#Preview {
    HomeView()
}
