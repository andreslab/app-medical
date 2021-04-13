//
//  ViewNewRecord.swift
//  medical
//
//  Created by Andres on 1/4/21.
//

import SwiftUI

struct ViewNewRecord: View {
    var body: some View {
        VStack (alignment: .center, spacing: 10){
            ComponentInputBloodPressure()
            ComponentCategoryRecord()
            Spacer()
            HStack{
                Button("Cancelar") {
                    print("")
                }
                SaveButton(title: "Guardar") {
                    print("")
                }
            }
        }
    }
}

struct ViewNewRecord_Previews: PreviewProvider {
    static var previews: some View {
        ViewNewRecord()
    }
}

struct SaveButton: View{
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action){
            Text(title).font(.caption2)
        }
        .foregroundColor(.white)
        .padding()
        .background(Color.MColorPrimary)
        .cornerRadius(20)
    }
}
