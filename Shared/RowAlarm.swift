//
//  RowAlarm.swift
//  medical
//
//  Created by Andres on 12/4/21.
//

import SwiftUI

struct RowAlarm: View {
    var alarm: Alarm
    
    var body: some View {
        VStack{
            HStack{
                Text(alarm.date)
                Spacer()
            }
            HStack{
                Text(alarm.title)
                Spacer()
            }
        }
    }
}

struct RowAlarm_Previews: PreviewProvider {
    static var previews: some View {
        RowAlarm(alarm: Alarm(id: 0, title: "titulo", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", date: "12-30", create: "")).previewLayout(.fixed(width: 400, height: 150))
    }
}
