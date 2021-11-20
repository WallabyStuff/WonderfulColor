//
//  WonderfulColorUtil.swift
//  WonderfulColor
//
//  Created by 장대호 on 2021/11/20.
//

import Foundation
class WonderfulColorUtil {
    static internal func calculate(hue: CGFloat, angle: CGFloat) -> CGFloat {
        debugPrint(hue,angle)
        return angle < 0 ? (hue+(360-angle)).truncatingRemainder(dividingBy: 360) : (hue+angle).truncatingRemainder(dividingBy: 360)
    }
    
}
