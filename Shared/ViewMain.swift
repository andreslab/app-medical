//
//  MainView.swift
//  medical
//
//  Created by Andres on 1/4/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView{
        ScrollView {
            VStack{
                //ComponentHeader(title: "Hola, Jaime").padding()
                ComponentGraph()
                HStack{
                    Text("Ultimos registros")
                    Spacer()
                    Text("more")
                }.padding()
                ListRecord(show: .PREVIEW).frame(height:250)
            }
            }.navigationTitle("Hola, Jaime").navigationBarTitleDisplayMode(.large).navigationBarItems(
                trailing:
                    NavigationLink(
                        destination: ViewProfile()){ ProfileButton()}
            )
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
