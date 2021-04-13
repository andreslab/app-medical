//
//  ExtensionColor.swift
//  medical (iOS)
//
//  Created by Andres on 13/4/21.
//

import Foundation
import SwiftUI


extension Color{
    
    public static var MColorPrimary: Color {
            return Color(UIColor(red: 0, green: 175/255, blue: 214/255, alpha: 1.0))
    }
    
    public static var MColorGrayBackground: Color {
            return Color(UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 1.0))
    }
    
    public static var MColorGrayTitle: Color {
            return Color(UIColor(red: 87/255, green: 86/255, blue: 86/255, alpha: 1.0))
    }
    
    public static var MColorGraySubTitle: Color {
            return Color(UIColor(red: 128/255, green: 128/255, blue: 128/255, alpha: 1.0))
    }
    
    public static var MColorRedScan: Color {
            return Color(UIColor(red: 231/255, green: 145/255, blue: 145/255, alpha: 1.0))
    }
    
    public static var MColorYellowScan: Color {
            return Color(UIColor(red: 244/255, green: 245/255, blue: 179/255, alpha: 1.0))
    }
    
    public static var MColorGreenScan: Color {
            return Color(UIColor(red: 201/255, green: 255/255, blue: 200/255, alpha: 1.0))
    }
    
    public static var MColorGreenAdd: Color {
            return Color(UIColor(red: 0, green: 186/255, blue: 19/255, alpha: 1.0))
    }

}
