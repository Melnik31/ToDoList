//
//  ContentView.swift
//  ToDoList
//
//  Created by Mikhail Melnikau on 8/6/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()

    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty{
            ToDoListItemView()
        } else {
            LoginView()
        }

        
    }
}

#Preview {
    MainView()
}
