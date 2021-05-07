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

struct ActionButton: View{
    
    let title: String
    let iconName: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action){
            Image(systemName:iconName)
            Text(title).font(.caption)
        }
        .frame(height:30)
        .frame(maxWidth: .infinity)
        .foregroundColor(.MColorGraySubTitle)
        .padding()
        .background(Color.MColorGrayBackground)
        .cornerRadius(20)
    }
}

struct MoreActionButton: View{
    
    let action: () -> Void
    
    var body: some View {
        Button(action: action){
            Image(systemName:"ellipsis")
        }
        .frame(width: 30,height:30)
        .foregroundColor(.MColorGraySubTitle)
        .padding()
        .background(Color.MColorGrayBackground)
        .cornerRadius(20)
    }
}

struct ViewRecords_Previews: PreviewProvider {
    static var previews: some View {
        ViewRecords()
    }
}
