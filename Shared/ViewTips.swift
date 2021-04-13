//
//  ViewTips.swift
//  medical
//
//  Created by Andres on 1/4/21.
//

import SwiftUI

struct ViewTips: View {
    var body: some View {
        VStack {
            HStack{
                Text("Tips de salud").font(.title)
                Spacer()
                Image(systemName: "person")
            }
            ListTips()
        }.padding()
    }
}

struct ViewTips_Previews: PreviewProvider {
    static var previews: some View {
        ViewTips()
    }
}
