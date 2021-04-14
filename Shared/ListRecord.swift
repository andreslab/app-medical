//
//  ListRecord.swift
//  medical
//
//  Created by Andres on 1/4/21.
//

import SwiftUI

enum Show {
    case PREVIEW
    case COMPLETE
}

private let records: ArraySlice = [
    BloodPressure(id: 0, sys: 129, dia: 80, pul: 23, create: "12-02-20 20:30"),
    BloodPressure(id: 1, sys: 130, dia: 80, pul: 23, create: "13-02-20 10:30"),
    BloodPressure(id: 2, sys: 131, dia: 80, pul: 23, create: "14-02-20 12:20"),
    BloodPressure(id: 3, sys: 132, dia: 80, pul: 23, create: "15-02-20 13:20")
]

struct ListRecord: View {
    
    var show: Show
    
    init(show: Show) {
        self.show = show
        UITableView.appearance().isScrollEnabled = show == .PREVIEW ? false : true
        
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        
            List(show == .COMPLETE ? records : (records.count < 4 ? records.prefix(records.count) : records.prefix(3)), id: \.id){
                    record in
                    NavigationLink(
                        destination: ViewDetailRecord(record: record)){ RowRecord(record: record).frame(height:30)
                    }.padding()
                    .background(Color.MColorGreenScan)
                    .cornerRadius(25)
            }
        
    }
}

struct ListRecord_Previews: PreviewProvider {
    static var previews: some View {
        ListRecord(show: .COMPLETE)
    }
}
