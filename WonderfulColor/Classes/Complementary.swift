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
            return origin.spinHue(angle: 180)
        } else {
            return origin
        }
    }
    
    /*
     make Darker Color or Lighter Color
     */
}
