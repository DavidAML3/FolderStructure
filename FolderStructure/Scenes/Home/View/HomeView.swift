//
//  HomeView.swift
//  FolderStructure
//
//  Created by David Mejia on 8/05/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.users) { user in
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
            viewModel.fetchUsers()
        }
    }
}

#Preview {
    HomeView()
}
