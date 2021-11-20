//
//  WonderfulColorUtil.swift
//  WonderfulColor
//
//  Created by 장대호 on 2021/11/20.
//

internal struct WonderfulColorUtil {
    
    static func calculate(hue: CGFloat, angle: CGFloat) -> CGFloat {
        return (hue + angle + 360).truncatingRemainder(dividingBy: 360)
    }
}
