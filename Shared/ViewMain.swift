//
//  MainView.swift
//  medical
//
//  Created by Andres on 1/4/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Hola Jaime").font(.title)
                Spacer()
                Image(systemName: "person")
            }
            Spacer()
            HStack{
                Text("Ultimos registros")
                Spacer()
                Text("more")
            }
            RowRecord(record: BloodPressure(id: 0, sys: 129, dia: 80, pul: 23, create: "")).padding()
                .background(Color.MColorYellowScan)
                .cornerRadius(25)
            RowRecord(record: BloodPressure(id: 0, sys: 129, dia: 80, pul: 23, create: "")).padding()
                .background(Color.MColorGreenScan)
                .cornerRadius(25)
            RowRecord(record: BloodPressure(id: 0, sys: 129, dia: 80, pul: 23, create: "")).padding()
                .background(Color.MColorGreenScan)
                .cornerRadius(25)
        }.padding()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
