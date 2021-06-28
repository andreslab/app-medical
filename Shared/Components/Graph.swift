//
//  ComponentGraph.swift
//  medical
//
//  Created by Andres on 14/4/21.
//

import SwiftUI
import SwiftUICharts

private var records: ArraySlice<BloodPressureModel> = []
private var _records: [BloodPressure] = []
private var someTuple: [(Int16, Int16)] = []

struct Graph: View {
    
    let recordManager: RecordManager
    
    //@State var data: ChartData = ChartData(numberValues: [(0, 5), (2, 6), (0, 5),(2, 6)])
    var data: ChartData = ChartData(numberValues: [(0, 5), (2, 6), (0, 5),(2, 6)])
    
    var style: ChartStyle = ChartStyle(backgroundColor: Color.white, accentColor: Color.MColorPrimary, gradientColor: GradientColor(start: Color.MColorPrimary, end: Color.MColorPrimary), textColor: Color.MColorGrayTitle, legendTextColor: Color.MColorGraySubTitle, dropShadowColor: Color.white)
    
    private mutating func getRecord() {
        _records = recordManager.getAllBloodPressure()
        for record in _records{
            records.append(BloodPressureModel(sys: record.sys, dia: record.dia, pul: record.pul, create: record.create ?? Date()))
            
            someTuple.append((record.sys, record.dia))
        }
        data = ChartData(numberValues: someTuple)
    }
    
    init() {
        self.recordManager = RecordManager()
        getRecord()
    }
    
    var body: some View {
        BarChartView(data: data, title: "record", legend: "cardio", style: style, form: CGSize(width: 300, height: 200), dropShadow: false, cornerImage: nil, valueSpecifier: "hola", animatedToBack: true)
    }
}

struct Graph_Previews: PreviewProvider {
    static var previews: some View {
        Graph()
    }
}
