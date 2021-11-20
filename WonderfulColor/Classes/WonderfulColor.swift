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
    
    var complementary: Complementary {
        return Complementary(origin: self)
    }
    
    var tetradic: Tetradic {
        return Tetradic(origin: self)
    }
    
    static func ==(lhs: WonderfulColor, rhs: WonderfulColor) -> Bool {
        if lhs.rgb() == rhs.rgb()
            && lhs.hsl() == rhs.hsl()
            && lhs.hsv() == rhs.hsv()
            && lhs.hexString() == rhs.hexString() {
            return true
        } else {
            return false
        }
    }
}
