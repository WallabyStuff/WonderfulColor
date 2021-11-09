//
//  WonderfulColor+RGB.swift
//  WonderfulColor
//
//  Created by 이승기 on 2021/10/25.
//

#if os(iOS) || os(tvOS) || os(watchOS)
import UIKit
#elseif os(OSX)
import AppKit
#endif

extension WonderfulColor {
    public convenience init(red: CGFloat, green: CGFloat, blue: CGFloat) {
        self.init(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    public convenience init(red: Int, green: Int, blue: Int) {
        self.init(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    public convenience init(red: Int, green: Int, blue: Int, alpha: CGFloat) {
        let fRed: CGFloat = CGFloat(red) / 255
        let fGreen: CGFloat = CGFloat(green) / 255
        let fBlue: CGFloat = CGFloat(blue) / 255
        
        self.init(red: fRed, green: fGreen, blue: fBlue, alpha: alpha)
    }
    
    public func rgb() -> (red: Int, green: Int, blue: Int, alpha: CGFloat) {
        var fRed: CGFloat = 0
        var fGreen: CGFloat = 0
        var fBlue: CGFloat = 0
        var fAlpha: CGFloat = 0
        
        getRed(&fRed, green: &fGreen, blue: &fBlue, alpha: &fAlpha)
        
        let iRed = Int(fRed * 255)
        let iGreen = Int(fGreen * 255)
        let iBlue = Int(fBlue * 255)
        
        return (iRed, iGreen, iBlue, fAlpha)
    }
    
    public func frgb() -> (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        var fRed: CGFloat = 0
        var fGreen: CGFloat = 0
        var fBlue: CGFloat = 0
        var fAlpha: CGFloat = 0
        
        getRed(&fRed, green: &fGreen, blue: &fBlue, alpha: &fAlpha)
        
//        fRed = fRed * 255
//        fGreen = fGreen * 255
//        fBlue = fBlue * 255
//
        
        return (fRed, fGreen, fBlue, fAlpha)
    }
}
