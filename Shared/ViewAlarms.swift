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
            VStack(alignment: .leading) {
                
                HStack{
                    ActionButton(title: "Nuevo", iconName:"plus", action: {
                        print("")
                    })
                    ActionButton(title: "Calendario", iconName:"calendar.badge.plus", action: {
                        print("")
                    })
                    MoreActionButton(action: {
                        print("")
                    })
                }.padding()
                Divider()
                ListAlarms().navigationTitle("Alarmas").navigationBarTitleDisplayMode(.large).navigationBarItems(
                    trailing:
                        NavigationLink(
                            destination: ViewProfile()){ ProfileButton()}
                )
        }
        }
    }
}

struct ViewAlarms_Previews: PreviewProvider {
    static var previews: some View {
        ViewAlarms()
    }
}
