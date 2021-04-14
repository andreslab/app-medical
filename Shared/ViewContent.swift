//
//  ViewContent.swift
//  Shared
//
//  Created by Andres on 1/4/21.
//

import SwiftUI

struct ViewContent: View {
    var body: some View {
        TabView{
            MainView().tabItem {
                Image(systemName: "heart.fill")
                            .imageScale(.medium)
            }
            ViewTips().tabItem {
                Image(systemName: "heart.fill")
                            .imageScale(.medium)
            }
            ViewNewRecord().tabItem {
                Image(systemName: "heart.fill")
                    .imageScale(.medium).foregroundColor(.MColorGreenAdd)
            }
            ViewRecord().tabItem {
                Image(systemName: "heart.fill")
                            .imageScale(.medium)
            }
            ViewAlarms().tabItem {
                Image(systemName: "heart.fill")
                            .imageScale(.medium)
            }
        }
        
    }
}

struct ViewContent_Previews: PreviewProvider {
    static var previews: some View {
        ViewContent()
    }
}

struct ProfileButton: View{
    
    /*var body: some View {
        Image(systemName:"person")
        .foregroundColor(.white)
            .frame(width:8, height:8)
        .padding()
        .background(Color.MColorPrimary)
        .cornerRadius(4)
    }*/
    var body: some View {
        Image(systemName:"person")
        .foregroundColor(Color.MColorPrimary)
    }
}
