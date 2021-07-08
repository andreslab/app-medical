//
//  ViewRecord.swift
//  medical
//
//  Created by Andres on 1/4/21.
//

import SwiftUI

struct ViewRecords: View {
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading) {
                HStack{
                    ActionButton(title: "Enviar",iconName:"paperplane.fill", action: {
                        print("")
                    })
                    ActionButton(title: "Descargar",iconName:"arrow.down", action: {
                        print("")
                    })
                    MoreActionButton(action: {
                        print("")
                    })
                }.padding()
                Divider()
                ListRecord(show: .COMPLETE)
            }.navigationTitle("Registros").navigationViewStyle(StackNavigationViewStyle()).navigationBarTitleDisplayMode(.large).navigationBarItems(
                trailing:
                    NavigationLink(
                        destination: ViewProfile()){ ProfileButton()})
        }
    }
}

struct ViewRecords_Previews: PreviewProvider {
    static var previews: some View {
        ViewRecords()
    }
}
