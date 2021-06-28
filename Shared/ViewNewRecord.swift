//
//  ViewNewRecord.swift
//  medical
//
//  Created by Andres on 1/4/21.
//

import SwiftUI

struct ViewNewRecord: View {
    
    let recordManager: RecordManager
    @State private var sys: String = ""
    @State private var dia: String = ""
    @State private var pul: String = ""
    
    var body: some View {
        VStack (alignment: .center, spacing: 10){
            
            HStack{
                Button("12-02-20 13:20") {
                    print("")
                }
                Spacer()
            }
            InputBloodPressure(sys:
                                            $sys, dia: $dia, pul: $pul)
            CategoryRecord()
            Spacer()
            HStack(alignment: .center){
                Button("Cancelar") {
                    print("")
                }
                Spacer()
                SaveButton(title: "Guardar") {
                    print("sys \(sys) dia \(dia) pul \(pul)")
                    recordManager.saveBloodPressure(sys: Int16(sys)!, dia: Int16(dia)!, pul: Int16(pul)!)
                }
            }
        }.padding()
    }
}

struct ViewNewRecord_Previews: PreviewProvider {
    static var previews: some View {
        ViewNewRecord(recordManager: RecordManager())
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
