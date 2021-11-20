//
//  TetradicColorTest.swift
//  WonderfulColor_Tests
//
//  Created by 장대호 on 2021/11/20.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation
import XCTest
import WonderfulColor

class TetradicColorTest: XCTestCase {
    func testTetraidColor() {
        guard let color = WonderfulColor(hex: "#ff0000") else { XCTAssert(false, "color init error");return; }
        XCTAssertEqual(color.tetradicColors.first.hexString(), "#ff0000")
        XCTAssertEqual(color.tetradicColors.second.hexString(), "#80ff00")
        XCTAssertEqual(color.tetradicColors.third.hexString(), "#00ffff")
        XCTAssertEqual(color.tetradicColors.fourth.hexString(), "#8000ff")
    }
}
