//
//  BhagavadGitaApp.swift
//  BhagavadGita
//
//  Created by mnameit on 02/05/23.
//

import SwiftUI

@main
struct BhagavadGitaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
