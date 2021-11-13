//
//  Complementary.swift
//  WonderfulColor
//
//  Created by YooBin Jo on 2021/11/13.
//

#if os(iOS) || os(tvOS) || os(watchOS)
import UIKit
#elseif os(OSX)
import AppKit
#endif

public struct Complementary {
    private let originColor: WonderfulColor
    
    init(origin: WonderfulColor) {
        self.originColor = origin
    }
    
    public var first: WonderfulColor {
        return originColor
    }
    
    public var second: WonderfulColor {
        let ciColor = CIColor(color: originColor)
        let r: CGFloat = 1.0 - ciColor.red
        let g: CGFloat = 1.0 - ciColor.green
        let b: CGFloat = 1.0 - ciColor.blue
        
        return WonderfulColor(red: r, green: g, blue: b)
    }
}
