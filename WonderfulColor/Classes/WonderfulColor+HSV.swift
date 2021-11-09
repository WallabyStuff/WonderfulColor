//
//  WonderfulColor+HSV.swift
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
    
    public convenience init(hue: CGFloat, saturation: CGFloat, value: CGFloat) {
        self.init(hue: hue, saturation: saturation, value: value, alpha: 1.0)
    }
    
    public convenience init(hue: CGFloat, saturation: CGFloat, value: CGFloat, alpha: CGFloat) {
        let fHue: CGFloat = CGFloat(hue) / 360
        let fSaturation: CGFloat = CGFloat(saturation) / 100
        let fValue: CGFloat = CGFloat(value) / 100
        
        self.init(hue: fHue, saturation: fSaturation, brightness: fValue, alpha: alpha)
    }
    
    public func hsv() -> (hue: CGFloat, saturation: CGFloat, value: CGFloat, alpha: CGFloat) {
        var fHue: CGFloat = 0
        var fSaturation: CGFloat = 0
        var fValue: CGFloat = 0
        var fAlpha: CGFloat = 0
        
        getHue(&fHue, saturation: &fSaturation, brightness: &fValue, alpha: &fAlpha)
        
        fHue = fHue * 360
        fSaturation = fSaturation * 100
        fValue = fValue * 100
        
        return (fHue, fSaturation, fValue, fAlpha)
    }
}
