//
//  ViewDetailAlarm.swift
//  medical
//
//  Created by Andres on 12/4/21.
//

import SwiftUI

struct ViewCreateAndEditAlarm: View {
    
    @State private var title: String = ""
    @State private var hour: String = ""
    @State private var repeatTime: String = ""
    
    init(alarm: Alarm?) {
        title = alarm?.title ?? ""
        hour = alarm?.description ?? ""
        repeatTime = alarm?.description ?? ""
    }
    
    var body: some View {
        InputAlarm(title: $title, hour: $hour, repeatTime: $repeatTime)
    }
}

struct ViewCreateAndEditAlarm_Previews: PreviewProvider {
    static var previews: some View {
        ViewCreateAndEditAlarm(alarm: Alarm(id: 0, title: "titulo", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", date: "12-30", create: ""))
    }
}
