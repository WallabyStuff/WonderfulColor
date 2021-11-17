//
//  WonderfulColorUtil.swift
//  WonderfulColor
//
//  Created by 장대호 on 2021/11/17.
//

import Foundation
class WonderfulColorUtil {
    static internal func calculateHue(hue: CGFloat,angle: CGFloat) -> CGFloat {
        return angle < 0 ? (hue+(360-angle)).truncatingRemainder(dividingBy: 360) : (hue+angle).truncatingRemainder(dividingBy: 360)
    }
    
}
