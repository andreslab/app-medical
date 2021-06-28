//
//  MainView.swift
//  medical
//
//  Created by Andres on 1/4/21.
//

import SwiftUI

struct ViewMain: View {
    
    let recordManager: RecordManager
    
    var body: some View {
        NavigationView{
        ScrollView {
            VStack{
                Graph()
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

struct ViewMain_Previews: PreviewProvider {
    static var previews: some View {
        ViewMain(recordManager: RecordManager())
    }
}
