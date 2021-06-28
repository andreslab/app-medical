//
//  ComponentCategoryRecord.swift
//  medical
//
//  Created by Andres on 1/4/21.
//

import SwiftUI

struct CategoryRecord: View {
    var body: some View {
        HStack {
            Button("BP") {
                print("")
            }.buttonStyle(FilledButton())
            Spacer()
            Button("O") {
                print("")
            }.buttonStyle(FilledButton())
            Spacer()
            Button("...") {
                print("")
            }.buttonStyle(FilledButton())
        }
    }
}

struct CategoryRecord_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRecord()
    }
}

struct FilledButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding()
            .frame(width: 80, height:80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .font(.largeTitle)
            .foregroundColor(configuration
                                .isPressed ? Color.white : Color.MColorGrayTitle)
            .background(configuration.isPressed ? Color.white : Color.MColorGrayBackground)
            .cornerRadius(15)
    }
}
