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
    public func rgb() -> (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        var fRed: CGFloat = 0
        var fGreen: CGFloat = 0
        var fBlue: CGFloat = 0
        var fAlpha: CGFloat = 0
        
        getRed(&fRed, green: &fGreen, blue: &fBlue, alpha: &fAlpha)
        
        fRed = fRed * 255
        fGreen = fGreen * 255
        fBlue = fBlue * 255
        fAlpha = fAlpha * 255
        
        return (fRed, fGreen, fBlue, fAlpha)
    }
}
