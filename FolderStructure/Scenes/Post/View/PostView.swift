//
//  PostView.swift
//  FolderStructure
//
//  Created by David Mejia on 8/05/24.
//

import SwiftUI

struct PostView: View {
    let userId: Int
    @StateObject var interactor = PostInteractor()
    @StateObject var presenter = PostPresenter()
    
    @State private var posts: [Post] = []
    
    var body: some View {
        List(posts) { post in
            VStack(alignment: .leading) {
                Text(post.title)
                    .font(.headline)
                    .foregroundColor(PastelColors.pastelPink)
                Text(post.body)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
        .navigationTitle("Posts")
        .onAppear {
            interactor.fetchPosts(for: userId) { fetchedPosts in
                self.posts = fetchedPosts
            }
        }
    }
}

#Preview {
    PostView(userId: 1)
}
