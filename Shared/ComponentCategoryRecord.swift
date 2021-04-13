//
//  ComponentCategoryRecord.swift
//  medical
//
//  Created by Andres on 1/4/21.
//

import SwiftUI

struct ComponentCategoryRecord: View {
    var body: some View {
        HStack {
            Button("BP") {
                print("")
            }.buttonStyle(FilledButton())
            Button("O") {
                print("")
            }.buttonStyle(FilledButton())
            Button("...") {
                print("")
            }.buttonStyle(FilledButton())
        }
    }
}

struct ComponentCategoryRecord_Previews: PreviewProvider {
    static var previews: some View {
        ComponentCategoryRecord()
    }
}

struct FilledButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding()
            .foregroundColor(configuration
                                .isPressed ? Color.white : Color.MColorGrayTitle)
            .background(configuration.isPressed ? Color.white : Color.MColorGrayBackground)
            .cornerRadius(15)
    }
}
