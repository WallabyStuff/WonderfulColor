//
//  TetradicColor.swift
//  WonderfulColor
//
//  Created by 장대호 on 2021/11/20.
//

import Foundation

public struct TetradicColor {
    private let _originColor: WonderfulColor
    init (originColor: WonderfulColor) {
        _originColor = originColor
    }
    public var first: WonderfulColor {
        return _originColor
    }
    public var second: WonderfulColor {
        let hsl = first.hsl()
        let computedHue = WonderfulColorUtil.calculate(hue: hsl.hue, angle: 90)
        return WonderfulColor(hue: computedHue, saturation: hsl.saturation, lightness: hsl.lightness)
        
    }
    public var third: WonderfulColor {
        let hsl = first.hsl()
        let computedHue = WonderfulColorUtil.calculate(hue: hsl.hue, angle: 180)
        return WonderfulColor(hue: computedHue, saturation: hsl.saturation, lightness: hsl.lightness)
    }
    public var fourth: WonderfulColor {
        let hsl = first.hsl()
        let computedHue = WonderfulColorUtil.calculate(hue: hsl.hue, angle: 270)
        return WonderfulColor(hue: computedHue, saturation: hsl.saturation, lightness: hsl.lightness)
    }
}
