//
//  ComponentInputBloodPressure.swift
//  medical
//
//  Created by Andres on 1/4/21.
//

import SwiftUI

struct ComponentInputBloodPressure: View {
    var body: some View {
        VStack (alignment: .center, spacing: 10){
            HStack {
                Text("Registro")
                    .font(.largeTitle)
                    .padding()
                Text("Registro")
                    .font(.largeTitle)
                    .padding()
            }
            HStack {
                Text("Registro")
                    .font(.largeTitle)
                    .padding()
                Text("Registro")
                    .font(.largeTitle)
                    .padding()
            }
            HStack {
                Text("Registro")
                    .font(.largeTitle)
                    .padding()
                Text("Registro")
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
