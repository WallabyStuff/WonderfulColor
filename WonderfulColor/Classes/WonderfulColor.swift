//
//  WonderfulColor.swift
//  WonderfulColor
//
//  Created by YooBin Jo on 2021/10/23.
//

#if os(iOS) || os(tvOS) || os(watchOS)
import UIKit
public typealias WonderfulColor = UIColor
#elseif os(OSX)
import AppKit
public typealias WonderfulColor = NSColor
#endif

public extension WonderfulColor {
    var complementary: WonderfulColor {
        var hue: CGFloat = 0
        var saturation: CGFloat = 0
        var brightness: CGFloat = 0
        var alpha: CGFloat = 0
        self.getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha)
        let compHue = CGFloat((hue + 0.5) - 1.0)
        
        return WonderfulColor(hue: compHue, saturation: saturation, brightness: brightness, alpha: alpha)
    }
    var tetradicColors: TetradicColor {
        return TetradicColor(originColor: self)
    }
}
