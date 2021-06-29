//
//  ViewProfile.swift
//  medical
//
//  Created by Andres on 1/4/21.
//

import SwiftUI

struct ViewProfile: View {
    var body: some View {
        VStack(alignment: .center, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
            Image("logo")
                .clipShape(Circle())
                .shadow(radius: 5)
                .overlay(Circle().stroke(Color.MColorPrimary, lineWidth: 5))
        })
    }
}

struct ViewProfile_Previews: PreviewProvider {
    static var previews: some View {
        ViewProfile()
    }
}
