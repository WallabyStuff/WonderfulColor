//
//  WonderfulColor+HSL.swift
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
    public convenience init(hue: CGFloat, saturation: CGFloat, lightness: CGFloat, alpha: CGFloat = 1.0) {
        let fHue: CGFloat = hue / 360.0
        var fSaturation: CGFloat = saturation / 100.0
        let fLightness: CGFloat = lightness / 100.0
        
        let t = fSaturation * ((fLightness < 0.5) ? fLightness : (1.0 - fLightness))
        let fBrightness = fLightness + t
        fSaturation = (fLightness > 0.0) ? (2.0 * t / fBrightness) : 0.0
        
        self.init(hue: fHue, saturation: fSaturation, brightness: fBrightness, alpha: alpha)
    }
    
    public func hsl() -> (hue: CGFloat, saturation: CGFloat, lightness: CGFloat, alpha: CGFloat) {
        let rgb = rgb()
        let fRed = rgb.red / 255
        let fGreen = rgb.green / 255
        let fBlue = rgb.blue / 255
        
        let cMax = max(fRed, fGreen, fBlue)
        let cMin = min(fRed, fGreen, fBlue)
        let delta = cMax - cMin
        
        var fHue: CGFloat = 0
        var fSaturation: CGFloat = 0
        var fLightness: CGFloat = (cMax + cMin) / 2
        let fAlpha: CGFloat = 0
        
        if delta == 0 {
            fHue = 0
        } else if cMax == fRed {
            fHue = abs(0 + (fGreen - fBlue) / delta) * 60
        } else if cMax == fGreen {
            fHue = abs(2 + (fBlue - fRed) / delta) * 60
        } else if cMax == fBlue {
            fHue = abs(4 + (fRed - fGreen) / delta) * 60
        }
        
        if delta == 0 {
            fSaturation = 0
        } else {
            fSaturation = delta / (1 - abs(2 * fLightness - 1))
        }
        
        fSaturation = fSaturation * 100
        fLightness = fLightness * 100
        
        return (fHue, fSaturation, fLightness, fAlpha)
    }
}