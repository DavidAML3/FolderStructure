//
//  PostView.swift
//  FolderStructure
//
//  Created by David Mejia on 8/05/24.
//

import SwiftUI

struct PostView: View {
    let userId: Int
    @StateObject var viewModel = PostViewModel()
    
    var body: some View {
        List(viewModel.posts) { post in
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
            viewModel.fetchPosts(for: userId)
        }
    }
}

#Preview {
    PostView(userId: 1)
}
