//
//  TaskCell.swift
//  PlanHubiOS
//
//  Created by Ridha Ahmad Firdaus on 06/12/23.
//

import SwiftUI

struct TaskCell: View {
    @EnvironmentObject var dateHolder: DateHolder
    @ObservedObject var passedTaskItem: TaskItem
    
    var body: some View {
        CheckBoxView(passedTaskItem: passedTaskItem)
            .environmentObject(dateHolder)
        Text(passedTaskItem.title ?? "")
            .padding(.horizontal)
    }
}

#Preview {
    TaskCell(passedTaskItem: TaskItem())
}
