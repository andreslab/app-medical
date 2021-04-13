//
//  ViewDetailAlarm.swift
//  medical
//
//  Created by Andres on 12/4/21.
//

import SwiftUI

struct ViewDetailAlarm: View {
    var alarm: Alarm
    var body: some View {
        Text("hota: \(alarm.date)")
    }
}

struct ViewDetailAlarm_Previews: PreviewProvider {
    static var previews: some View {
        ViewDetailAlarm(alarm: Alarm(id: 0, title: "titulo", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", date: "12-30", create: ""))
    }
}
