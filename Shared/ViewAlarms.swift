//
//  ViewAlarms.swift
//  medical
//
//  Created by Andres on 1/4/21.
//

import SwiftUI

struct ViewAlarms: View {
    var body: some View {
        NavigationView{
            VStack {
                ComponentHeader()
                HStack{
                    ActionButton(title: "Nuevo", action: {
                        print("")
                    })
                    ActionButton(title: "Calendario", action: {
                        print("")
                    })
                    MoreActionButton(action: {
                        print("")
                    })
                }
                ListAlarms()
            }.padding()
        }
    }
}

struct ViewAlarms_Previews: PreviewProvider {
    static var previews: some View {
        ViewAlarms()
    }
}
