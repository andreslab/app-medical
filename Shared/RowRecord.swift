//
//  RowRecord.swift
//  medical
//
//  Created by Andres on 1/4/21.
//

import SwiftUI

struct RowRecord: View {
    
    var record: BloodPressure
    
    var body: some View {
        HStack {
            Text("SYS").foregroundColor(.black)
            Text(String(record.sys)).foregroundColor(.black)
            Text("DIA").foregroundColor(.black)
            Text(String(record.dia)).foregroundColor(.black)
            Spacer()
            Image(systemName: "heart.fill").foregroundColor(.black)
            Text(String(record.pul)).foregroundColor(.black)
        }
    }
}

struct RowRecord_Previews: PreviewProvider {
    static var previews: some View {
        RowRecord(record: BloodPressure(id: 0, sys: 120, dia: 80, pul: 70, create: "30-03_2021")).previewLayout(.fixed(width: 400, height: 80))
    }
}
