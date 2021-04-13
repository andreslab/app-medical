//
//  LIstAlarms.swift
//  medical
//
//  Created by Andres on 12/4/21.
//

import SwiftUI

private let alarms = [
    Alarm(id: 0, title: "titulo", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", date: "12-30", create: ""),
    Alarm(id: 0, title: "titulo", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", date: "12-30", create: ""),
    Alarm(id: 0, title: "titulo", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", date: "12-30", create: "")
]

struct ListAlarms: View {
    var body: some View {
        List(alarms, id: \.id){
            alarm in
            NavigationLink(
                destination: ViewDetailAlarm(alarm: alarm)){ RowAlarm(alarm: alarm)
            }.padding()
            .background(Color.MColorGrayBackground)
            .cornerRadius(25)
        }
    }
}

struct AlamrsList_Previews: PreviewProvider {
    static var previews: some View {
        ListAlarms()
    }
}
