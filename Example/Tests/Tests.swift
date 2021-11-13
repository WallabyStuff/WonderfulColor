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
        guard let targetColor = WonderfulColor(hex: "#346ae7") else { return }
        self.measure {
            print(targetColor.complementary.first.rgb())
            print(targetColor.complementary.second.rgb())
        }
    }
}
