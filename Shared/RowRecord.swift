//
//  RowRecord.swift
//  medical
//
//  Created by Andres on 1/4/21.
//

import SwiftUI

struct RowRecord: View {
    
    var record: BloodPressureModel
    
    var body: some View {
        HStack {
            Text("SYS")
                .foregroundColor(.MColorGrayTitle)
                .font(.caption)
                .offset(y: 5)
            Text(String(record.sys))
                .foregroundColor(.black)
                .font(.largeTitle)
            Text("DIA")
                .foregroundColor(.MColorGrayTitle)
                .font(.caption)
                .offset(y: 5)
            Text(String(record.dia))
                .foregroundColor(.black)
                .font(.largeTitle)
            Spacer()
            Image(systemName: "heart.fill")
                .foregroundColor(.red)
                .font(.title2)
            Text(String(record.pul))
                .foregroundColor(.black)
                .font(.title2)
        }
    }
}

struct RowRecord_Previews: PreviewProvider {
    static var previews: some View {
        RowRecord(record: BloodPressureModel(id: 0, sys: 120, dia: 80, pul: 70, create: Date())).previewLayout(.fixed(width: 400, height: 80))
    }
}
