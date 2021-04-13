//
//  ListRecord.swift
//  medical
//
//  Created by Andres on 1/4/21.
//

import SwiftUI

private let records = [
    BloodPressure(id: 0, sys: 129, dia: 80, pul: 23, create: ""),
    BloodPressure(id: 1, sys: 130, dia: 80, pul: 23, create: ""),
    BloodPressure(id: 2, sys: 131, dia: 80, pul: 23, create: ""),
    BloodPressure(id: 3, sys: 132, dia: 80, pul: 23, create: "")
]

struct ListRecord: View {
    var body: some View {
            List(records, id: \.id){
                record in
                NavigationLink(
                    destination: ViewDetailRecord(record: record)){ RowRecord(record: record)
                }.padding()
                .background(Color.MColorGreenScan)
                .cornerRadius(25)
            }
    }
}

struct ListRecord_Previews: PreviewProvider {
    static var previews: some View {
        ListRecord()
    }
}
