//
//  WonderfulColor+HEX.swift
//  WonderfulColor
//
//  Created by 이승기 on 2021/10/25.
//

import UIKit

extension UIColor {
    public convenience init?(hex: String) {
        let fRed: CGFloat
        let fGreen: CGFloat
        let fBlue: CGFloat
        
        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])
            
            if hexColor.count == 6 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0
                
                if scanner.scanHexInt64(&hexNumber) {
                    fRed = CGFloat((hexNumber & 0xff0000) >> 16) / 255
                    fGreen = CGFloat((hexNumber & 0x00ff00) >> 8) / 255
                    fBlue = CGFloat((hexNumber & 0x0000ff)) / 255
                    
                    self.init(red: fRed, green: fGreen, blue: fBlue, alpha: 1.0)
                    return
                }
            }
        }
        return nil
    }
    
    public convenience init?(hex: String, alpha: CGFloat) {
        self.init(hex: hex)
        withAlphaComponent(alpha)
    }
    
    public func hexString() -> String {
        var fRed: CGFloat = 0
        var fGreen: CGFloat = 0
        var fBlue: CGFloat = 0
        var fAlpha: CGFloat = 0

        getRed(&fRed, green: &fGreen, blue: &fBlue, alpha: &fAlpha)

        let rgb: Int = (Int)(fRed*255)<<16 | (Int)(fGreen*255)<<8 | (Int)(fBlue*255)<<0

        return String(format:"#%06x", rgb)
    }
}
