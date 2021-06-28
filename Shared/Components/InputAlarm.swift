//
//  ComponentInputAlarm.swift
//  medical
//
//  Created by Andres on 28/6/21.
//

import SwiftUI

struct InputAlarm: View {
    
    @Binding var title: String
    @Binding var hour: String
    @Binding var repeatTime: String
    
    @State var data: [(String, [String])] = [
            ("One", Array(0...10).map { "\($0)" }),
            ("Two", Array(20...40).map { "\($0)" }),
            ("Three", Array(100...200).map { "\($0)" })
        ]
    @State var selection: [String] = [0, 20, 100].map { "\($0)" }
    
    @State private var checked = true
    
    var body: some View {
        VStack (alignment: .leading, spacing: 10){
            VStack {
                Text("TITULO")
                    .font(.title3)
                    .padding()
                TextField("Alarma", text: $title)
                    .font(.title3)
                    .padding()
                    .keyboardType(.numberPad)
            }
            VStack {
                Text("HORA")
                    .font(.title3)
                    .padding()
                Text(verbatim: "Selection: \(selection)")
                MultiPicker(data: data, selection: $selection).frame(height: 150)
            }
            VStack {
                Text("REPETIR")
                    .font(.title3)
                    .padding()
                TextField("cada día", text: $repeatTime)
                    .font(.title3)
                    .padding()
                    .keyboardType(.numberPad)
                CheckBox(checked: $checked)
            }
        }
        .background(Color.MColorGrayBackground)
        .cornerRadius(20)
    }
}

struct InputAlarm_Previews: PreviewProvider {
    
    @State static var title = ""
    @State static var hour = ""
    @State static var repeatTime = ""
    
    static var previews: some View {
        InputAlarm(title: $title, hour: $hour, repeatTime: $repeatTime)
    }
}
