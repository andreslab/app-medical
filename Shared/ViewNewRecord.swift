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
            
            HStack{
                Button("12-02-20 13:20") {
                    print("")
                }
                Spacer()
            }
            ComponentInputBloodPressure()
            ComponentCategoryRecord()
            Spacer()
            HStack(alignment: .center){
                Button("Cancelar") {
                    print("")
                }
                Spacer()
                SaveButton(title: "Guardar") {
                    print("")
                }
            }
        }.padding()
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
        .font(.title2)
        .frame(width:120)
        .padding()
        .background(Color.MColorPrimary)
        .cornerRadius(20)
    }
}
