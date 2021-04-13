//
//  TipsRow.swift
//  medical
//
//  Created by Andres on 5/4/21.
//

import SwiftUI

struct RowTip: View {
    
    var tip: Tip
    
    var body: some View {
        VStack{
            HStack{
                Text(tip.title).foregroundColor(Color.MColorGrayTitle)
                Spacer()
            }
            Text(tip.description).foregroundColor(Color.MColorGraySubTitle)
        }.padding()
    }
}

struct RowTip_Previews: PreviewProvider {
    static var previews: some View {
        RowTip(tip: Tip(id: 0, title: "titulo", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", create: "")).previewLayout(.fixed(width: 400, height: 150))
    }
}
