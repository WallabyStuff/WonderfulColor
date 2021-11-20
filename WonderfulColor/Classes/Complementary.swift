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
            var hue: CGFloat = 0
            var saturation: CGFloat = 0
            var brightness: CGFloat = 0
            var alpha: CGFloat = 0
            origin.getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha)
            let compHue = CGFloat((hue * 360 + 180).truncatingRemainder(dividingBy: 360)) / 360
            return WonderfulColor(hue: compHue, saturation: saturation, brightness: brightness, alpha: alpha)
        } else {
            return origin
        }
    }
    
    /*
     make Darker Color or Lighter Color
     */
}
