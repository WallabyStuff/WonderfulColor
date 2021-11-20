//
//  Complementary.swift
//  WonderfulColor
//
//  Created by YooBin Jo on 2021/11/20.
//

#if os(iOS) || os(tvOS) || os(watchOS)
import UIKit
#elseif os(OSX)
import AppKit
#endif

public struct Complementary {
    private let origin: WonderfulColor
    
    init(origin: WonderfulColor) {
        self.origin = origin
    }
    
    public var color: WonderfulColor {
        if origin.hexString() != "#FFFFFF" && origin.hexString() != "#000000" {
            let hsl = origin.hsl()
            let compHue = WonderfulColorUtil.calculate(hue: hsl.hue, angle: 180)
            return WonderfulColor(hue: compHue, saturation: hsl.saturation, lightness: hsl.lightness, alpha: hsl.alpha)
        } else {
            return origin
        }
    }
    
    /*
     make Darker Color or Lighter Color
     */
}
