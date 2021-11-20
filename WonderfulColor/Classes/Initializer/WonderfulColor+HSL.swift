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

public extension WonderfulColor {
    
    convenience init(hue: CGFloat, saturation: CGFloat, lightness: CGFloat, alpha: CGFloat = 1.0) {
        let fHue = hue / 360
        var fSaturation = saturation / 100
        let fLightness = lightness / 100
        
        let t = fSaturation * ((fLightness < 0.5) ? fLightness : (1.0 - fLightness))
        let fBrightness = fLightness + t
        fSaturation = (fLightness > 0.0) ? (2.0 * t / fBrightness) : 0.0
        
        self.init(hue: fHue, saturation: fSaturation, brightness: fBrightness, alpha: alpha)
    }
    
    convenience init(hue: CGFloat, saturation: CGFloat, lightness: CGFloat) {
        self.init(hue: hue, saturation: saturation, lightness: lightness, alpha: 1.0)
    }
    
    func hsl() -> (hue: CGFloat, saturation: CGFloat, lightness: CGFloat, alpha: CGFloat) {
        let frgb = frgb()
        let fRed = frgb.red
        let fGreen = frgb.green
        let fBlue = frgb.blue
        
        let cMax = max(fRed, fGreen, fBlue)
        let cMin = min(fRed, fGreen, fBlue)
        let delta = cMax - cMin
        
        var fHue: CGFloat = 0
        var fSaturation: CGFloat = 0
        var fLightness: CGFloat = (cMax + cMin) / 2
        let fAlpha: CGFloat = frgb.alpha
        
        getHue(&fHue, saturation: nil, brightness: nil, alpha: nil)
        
        if delta == 0 {
            fSaturation = 0
        } else {
            fSaturation = delta / (1 - abs(2 * fLightness - 1))
        }
        
        fHue = fHue * 360
        fSaturation = fSaturation * 100
        fLightness = fLightness * 100
        
        return (fHue, fSaturation, fLightness, fAlpha)
    }
}
