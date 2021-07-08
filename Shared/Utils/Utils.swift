//
//  Utils.swift
//  medical
//
//  Created by Andres on 28/6/21.
//

import Foundation
import SwiftUI

struct MultiPicker: View  {

    typealias Label = String
    typealias Entry = String

    let data: [ (Label, [Entry]) ]
    @Binding var selection: [Entry]

    var body: some View {
        GeometryReader { geometry in
            HStack {
                ForEach(0..<self.data.count) { column in
                    Picker(self.data[column].0, selection: self.$selection[column]) {
                        ForEach(0..<self.data[column].1.count) { row in
                            Text(verbatim: self.data[column].1[row])
                            .tag(self.data[column].1[row])
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
                    .frame(width: geometry.size.width / CGFloat(self.data.count), height: geometry.size.height)
                    .clipped()
                }
            }
        }
    }
}

struct CheckBox: View {
    @Binding var checked: Bool

    var body: some View {
        Image(systemName: checked ? "checkmark.square.fill" : "square")
            .foregroundColor(checked ? Color(UIColor.systemBlue) : Color.secondary)
            .onTapGesture {
                self.checked.toggle()
            }
    }
}

struct ActionButton: View{
    
    let title: String
    let iconName: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action){
            Image(systemName:iconName)
            Text(title).font(.caption)
        }
        .frame(height:30)
        .frame(maxWidth: .infinity)
        .foregroundColor(.MColorGraySubTitle)
        .padding()
        .background(Color.MColorGrayBackground)
        .cornerRadius(20)
    }
}

struct MoreActionButton: View{
    
    let action: () -> Void
    
    var body: some View {
        Button(action: action){
            Image(systemName:"ellipsis")
        }
        .frame(width: 30,height:30)
        .foregroundColor(.MColorGraySubTitle)
        .padding()
        .background(Color.MColorGrayBackground)
        .cornerRadius(20)
    }
}

struct SaveButton: View{
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action){
            Text(title).font(.caption2)
        }
        .foregroundColor(.white)
        .font(.title2)
        .frame(width:120)
        .padding()
        .background(Color.MColorPrimary)
        .cornerRadius(20)
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
