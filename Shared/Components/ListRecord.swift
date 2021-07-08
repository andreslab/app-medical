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

//private var records: ArraySlice<BloodPressureModel> = [
//    BloodPressureModel(sys: 129, dia: 80, pul: 23, create: Date()),
//    BloodPressureModel(sys: 130, dia: 80, pul: 23, create: Date()),
//    BloodPressureModel(sys: 131, dia: 80, pul: 23, create: Date()),
//    BloodPressureModel(sys: 132, dia: 80, pul: 23, create: Date())
//]

private var records: ArraySlice<BloodPressureModel> = []
private var _records: [BloodPressure] = []

struct ListRecord: View {
    
    let recordManager: RecordManager
    var show: Show
    
    private func getRecord() {
        _records = recordManager.getAllBloodPressure()
        for record in _records{
            records.append(BloodPressureModel(sys: record.sys, dia: record.dia, pul: record.pul, create: record.create ?? Date()))
        }
    }
    
    init(show: Show) {
        self.recordManager = RecordManager()
        self.show = show
        UITableView.appearance().isScrollEnabled = show == .PREVIEW ? false : true
        UITableView.appearance().separatorStyle = .none
        UITableView.appearance().backgroundColor = .white
        UITableViewCell.appearance().backgroundColor = .white
        UITableView.appearance().tableFooterView = UIView()
        getRecord()
    }
    
    var body: some View {
        
        if records.count > 0 {
            List(show == .COMPLETE ? records : (records.count < 4 ? records.prefix(records.count) : records.prefix(3)), id: \.id){
                        record in
                        NavigationLink(
                            destination: ViewDetailRecord(record: record)){ RowRecord(record: record).frame(height:30)
                        }.padding()
                        .background(Color.MColorGreenScan)
                        .cornerRadius(25)
            }
        }else {
            NavigationLink(
                destination:ViewNewRecord(recordManager: RecordManager())){
                    VStack{
                        Image(systemName: "plus.circle")
                            .imageScale(.large)
                            .foregroundColor(Color.MColorGraySubTitle)
                        Text("No existen elementos")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding()
                        .foregroundColor(Color.MColorGraySubTitle)
                            .font(.callout)
                    }
                }
        }
    }
}

//struct ListRecord_Previews: PreviewProvider {
//    static var previews: some View {
//        ListRecord(show: .COMPLETE)
//    }
//}
