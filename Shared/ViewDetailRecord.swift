//
//  ViewDetailRecord.swift
//  medical
//
//  Created by Andres on 1/4/21.
//

import SwiftUI

struct ViewDetailRecord: View {
    var record: BloodPressure
    var body: some View {
        Text("sys \(record.sys)")
    }
}

struct ViewDetailRecord_Previews: PreviewProvider {
    static var previews: some View {
        ViewDetailRecord(record:BloodPressure(id: 0, sys: 129, dia: 80, pul: 23, create: ""))
    }
}
