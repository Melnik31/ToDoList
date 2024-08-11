//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Mikhail Melnikau on 8/6/24.
//
import FirebaseCore
import FirebaseFirestore
import SwiftUI

@main
struct ToDoListApp: App {
   
    init() {
        FirebaseApp.configure()
        
    }
    
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
