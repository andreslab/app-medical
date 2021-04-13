//
//  ComponentHeader.swift
//  medical
//
//  Created by Andres on 12/4/21.
//

import SwiftUI

struct ComponentHeader: View {
    var body: some View {
        HStack{
            Text("Alarmas").font(.title).foregroundColor(.MColorGrayTitle)
            Spacer()
            NavigationLink(
                destination: ViewProfile()){ ProfileButton()}
            
        }
    }
}

struct ComponentHeader_Previews: PreviewProvider {
    static var previews: some View {
        ComponentHeader()
    }
}
