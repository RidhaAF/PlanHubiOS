//
//  FloatingButton.swift
//  PlanHubiOS
//
//  Created by Ridha Ahmad Firdaus on 06/12/23.
//

import SwiftUI

struct FloatingButton: View {
    @EnvironmentObject var dateHolder: DateHolder
    
    var body: some View {
        Spacer()
        HStack {
            NavigationLink(destination: TaskEditView(passedTaskItem: nil, initialDate: Date())
                .environmentObject(dateHolder)) {
                Text("+ New Task")
                    .font(.headline)
            }
            .padding(16)
            .foregroundColor(.white)
            .background(Color.accentColor)
            .cornerRadius(32)
            .padding(32)
            .shadow(color: .black.opacity(0.4), radius: 4, x: 4, y: 4)
        }
    }
}

#Preview {
    FloatingButton()
}
