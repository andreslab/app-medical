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
            ViewMain(recordManager: RecordManager()).tabItem {
                Image(systemName: "chart.bar")
                            .imageScale(.medium)
            }
            ViewTips().tabItem {
                Image(systemName: "doc.text.below.ecg")
                            .imageScale(.medium)
            }
            ViewNewRecord(recordManager: RecordManager()).tabItem {
                Image(systemName: "plus.circle")
                    .imageScale(.large)
            }
            ViewRecords().tabItem {
                Image(systemName: "newspaper")
                            .imageScale(.medium)
            }
            ViewAlarms().tabItem {
                Image(systemName: "alarm")
                            .imageScale(.medium)
            }
        }.accentColor(.MColorPrimary)
        
    }
}

struct ViewContent_Previews: PreviewProvider {
    static var previews: some View {
        ViewContent()
    }
}
