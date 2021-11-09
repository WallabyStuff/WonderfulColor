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
        
        guard let targetColor = WonderfulColor(hex: "#346ae7") else { return }
        view.backgroundColor = targetColor
        print(targetColor.hexString())
        print("\n-RGB-")
        print(targetColor.rgb().red)
        print(targetColor.rgb().green)
        print(targetColor.rgb().blue)
        print(targetColor.rgb().alpha)
        print("\n-FRGB-")
        print(targetColor.frgb().red)
        print(targetColor.frgb().green)
        print(targetColor.frgb().blue)
        print(targetColor.frgb().alpha)
        print("\n-HSL-")
        print(targetColor.hsl().hue)
        print(targetColor.hsl().saturation)
        print(targetColor.hsl().lightness)
        print(targetColor.hsl().alpha)
        print("\n-HSV-")
        print(targetColor.hsv().hue)
        print(targetColor.hsv().saturation)
        print(targetColor.hsv().value)
        print(targetColor.hsv().alpha)
    }
}
