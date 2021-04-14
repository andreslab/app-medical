//
//  ViewTips.swift
//  medical
//
//  Created by Andres on 1/4/21.
//

import SwiftUI

struct ViewTips: View {
    var body: some View {
        NavigationView{
        VStack {
            //ComponentHeader(title: "Tips de salud").padding()
            ListTips()
        }.navigationTitle("Tips de salud").navigationViewStyle(StackNavigationViewStyle()).navigationBarTitleDisplayMode(.large).navigationBarItems(
            trailing:
                NavigationLink(
                    destination: ViewProfile()){ ProfileButton()})
    }
    }
}

struct ViewTips_Previews: PreviewProvider {
    static var previews: some View {
        ViewTips()
    }
}
