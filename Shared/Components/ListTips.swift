//
//  ListTips.swift
//  medical
//
//  Created by Andres on 5/4/21.
//

import SwiftUI

private let tips = [
    Tip(id: 0, title: "titulo", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", create: ""),
    Tip(id: 0, title: "titulo", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", create: ""),
    Tip(id: 0, title: "titulo", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", create: "")
]

struct ListTips: View {
    var body: some View {
        List(tips, id: \.id){
            tip in
             RowTip(tip: tip)
        }
    }
}

struct ListTips_Previews: PreviewProvider {
    static var previews: some View {
        ListTips()
    }
}
