//
//  ViewController.swift
//  WonderfulColor
//
//  Created by Avocado34 on 10/18/2021.
//  Copyright (c) 2021 Avocado34. All rights reserved.
//

import UIKit
import WonderfulColor

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // #895288
        if let targetColor = WonderfulColor(hex: "#b1c3a7") {
            print("<RGB>")
            print(targetColor.rgb().red)
            print(targetColor.rgb().green)
            print(targetColor.rgb().blue)
            print("\n")
            
            print("<HSL>")
            print(targetColor.hsl().hue)
            print(targetColor.hsl().saturation)
            print(targetColor.hsl().lightness)
            print("\n")
            
            print("<HSV>")
            print(targetColor.hsv().hue)
            print(targetColor.hsv().saturation)
            print(targetColor.hsv().value)
            print("\n")
            
            print("<HEX>")
            print(targetColor.hexString())
        }
    }
}
