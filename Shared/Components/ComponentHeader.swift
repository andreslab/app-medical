//
//  ComponentHeader.swift
//  medical
//
//  Created by Andres on 12/4/21.
//

import SwiftUI

struct ComponentHeader: View {
    var title: String
    var body: some View {
        HStack{
            Text(title).font(.title).foregroundColor(.MColorGrayTitle)
            Spacer()
            NavigationLink(
                destination: ViewProfile()){ ProfileButton()}
            
        }
    }
}

struct ComponentHeader_Previews: PreviewProvider {
    static var previews: some View {
        ComponentHeader(title: "Hola, Jaime")
    }
}
