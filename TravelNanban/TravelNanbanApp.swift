//
//  TravelNanbanApp.swift
//  TravelNanban
//
//  Created by Sivasankar on 13/2/25.
//

import SwiftUI
import Firebase

@main
struct TravelNanbanApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
