//
//  TetradicTest.swift
//  WonderfulColor_Tests
//
//  Created by 장대호 on 2021/11/20.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation
import XCTest
import WonderfulColor

class TetradicTest: XCTestCase {
    func testTetradic() {
        guard let color = WonderfulColor(hex: "#FF0000") else {
            XCTAssert(false, "color init error")
            return
        }
        
        XCTAssertEqual(color.tetradic.first.hexString(), "#FF0000")
        XCTAssertEqual(color.tetradic.second.hexString(), "#80FF00")
        XCTAssertEqual(color.tetradic.third.hexString(), "#00FFFF")
        XCTAssertEqual(color.tetradic.fourth.hexString(), "#8000FF")
    }
}
