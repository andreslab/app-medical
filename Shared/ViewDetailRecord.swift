//
//  ViewDetailRecord.swift
//  medical
//
//  Created by Andres on 1/4/21.
//

import SwiftUI

struct ViewDetailRecord: View {
    var record: BloodPressureModel
    var body: some View {
        DetailBloodPressure(record: record).padding()
    }
}

struct ViewDetailRecord_Previews: PreviewProvider {
    static var previews: some View {
        ViewDetailRecord(record:BloodPressureModel(sys: 129, dia: 80, pul: 23, create: Date()))
    }
}
