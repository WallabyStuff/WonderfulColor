//
//  Tetradic.swift
//  WonderfulColor
//
//  Created by 장대호 on 2021/11/20.
//

import Foundation

public struct Tetradic {
    private let origin: WonderfulColor
    
    init (origin: WonderfulColor) {
        self.origin = origin
    }
    
    public var first: WonderfulColor {
        return origin
    }
    
    public var second: WonderfulColor {
        return origin.spinHue(angle: 90)
    }
    
    public var third: WonderfulColor {
        return origin.spinHue(angle: 180)
    }
    
    public var fourth: WonderfulColor {
        return origin.spinHue(angle: 270)
    }
}
