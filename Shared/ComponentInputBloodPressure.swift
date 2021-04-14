//
//  ComponentInputBloodPressure.swift
//  medical
//
//  Created by Andres on 1/4/21.
//

import SwiftUI

struct ComponentInputBloodPressure: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 10){
            HStack {
                Text("SYS")
                    .font(.largeTitle)
                    .padding()
                Spacer()
                Text("0")
                    .font(.largeTitle)
                    .padding()
            }
            HStack {
                Text("DIA")
                    .font(.largeTitle)
                    .padding()
                Spacer()
                Text("0")
                    .font(.largeTitle)
                    .padding()
            }
            HStack {
                Text("PUL")
                    .font(.largeTitle)
                    .padding()
                Spacer()
                Text("0")
                    .font(.largeTitle)
                    .padding()
            }
        }
        .background(Color.MColorGrayBackground)
        .cornerRadius(20)
    }
}

struct ComponentInputBloodPressure_Previews: PreviewProvider {
    static var previews: some View {
        ComponentInputBloodPressure()
    }
}
