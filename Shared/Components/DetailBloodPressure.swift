//
//  DetailBloodPressure.swift
//  medical
//
//  Created by Andres on 29/6/21.
//

import SwiftUI

struct DetailBloodPressure: View {
    var record: BloodPressureModel
    var body: some View {
        VStack (alignment: .leading, spacing: 10){
            HStack {
                Text("SYS")
                    .font(.largeTitle)
                    .padding()
                Spacer()
                Text("\(record.sys)")
                    .font(.largeTitle)
                    .padding()
            }
            HStack {
                Text("DIA")
                    .font(.largeTitle)
                    .padding()
                Spacer()
                Text("\(record.dia)")
                    .font(.largeTitle)
                    .padding()
            }
            HStack {
                Text("PUL")
                    .font(.largeTitle)
                    .padding()
                Spacer()
                Text("\(record.pul)")
                    .font(.largeTitle)
                    .padding()
            }
        }
        .background(Color.MColorGrayBackground)
        .cornerRadius(20)
    }
}

struct DetailBloodPressure_Previews: PreviewProvider {
    static var previews: some View {
        DetailBloodPressure(record:BloodPressureModel(sys: 129, dia: 80, pul: 23, create: Date()))
    }
}
