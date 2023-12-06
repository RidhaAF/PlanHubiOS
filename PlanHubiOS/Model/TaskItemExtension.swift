//
//  TaskItemExtension.swift
//  PlanHubiOS
//
//  Created by Ridha Ahmad Firdaus on 06/12/23.
//

import SwiftUI

extension TaskItem {
    func isCompleted() -> Bool {
        return completedDate != nil
    }
}
