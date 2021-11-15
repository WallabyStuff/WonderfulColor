import XCTest
import WonderfulColor

class Test: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override class func tearDown() {
        super.tearDown()
    }
    
    func testComplementary() {
//        guard let targetColor = WonderfulColor(hex: "#346ae7") else { return }
        let targetColor = WonderfulColor(red: 255, green: 255, blue: 255, alpha: 1)
        print(targetColor.hexString())
        print(targetColor.complementary.hexString())
        print(targetColor.complementary.rgb())
    }
}
