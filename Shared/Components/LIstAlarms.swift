//
//  LIstAlarms.swift
//  medical
//
//  Created by Andres on 12/4/21.
//

import SwiftUI

private let alarms = [
    AlarmModel(id: 0, title: "titulo", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", date: "12-30", create: ""),
    AlarmModel(id: 0, title: "titulo", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", date: "12-30", create: ""),
    AlarmModel(id: 0, title: "titulo", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", date: "12-30", create: "")
]

struct ListAlarms: View {
    var body: some View {
        if alarms.count > 0 {
            List(alarms, id: \.id){
                alarm in
                NavigationLink(
                    destination: ViewCreateAndEditAlarm(alarm: alarm)){ RowAlarm(alarm: alarm).frame(height:30)
                }.padding()
                .background(Color.MColorGrayBackground)
                .cornerRadius(25)
            }
        }else {
            NavigationLink(
                destination:ViewCreateAndEditAlarm(alarm: nil)){
                VStack{
                    Image(systemName: "plus.circle")
                        .imageScale(.large)
                        .foregroundColor(Color.MColorGraySubTitle)
                    Text("No existen elementos")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .foregroundColor(Color.MColorGraySubTitle)
                        .font(.callout)
                }
            }
        }
    }
}

struct AlamrsList_Previews: PreviewProvider {
    static var previews: some View {
        ListAlarms()
    }
}
