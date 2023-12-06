//
//  PlanHubiOSApp.swift
//  PlanHubiOS
//
//  Created by Ridha Ahmad Firdaus on 06/12/23.
//

import SwiftUI

@main
struct PlanHubiOSApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            
            let context = persistenceController.container.viewContext
            let dateHolder = DateHolder(context)
            
            TaskListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(dateHolder)
        }
    }
}
