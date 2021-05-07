//
//  Record.swift
//  medical
//
//  Created by Andres on 1/4/21.
//

import Foundation

struct BloodPressureModel: Identifiable {
    var id: String = UUID().uuidString
    var sys: Int16
    var dia: Int16
    var pul: Int16
    var create: Date
}
