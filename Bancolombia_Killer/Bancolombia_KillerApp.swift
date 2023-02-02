//
//  Bancolombia_KillerApp.swift
//  Bancolombia_Killer
//
//  Created by Daniel Florez on 28/01/23.
//

import SwiftUI

@main
struct Bancolombia_KillerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
                LoginView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
