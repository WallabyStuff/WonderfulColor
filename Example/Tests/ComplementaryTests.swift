import XCTest
import WonderfulColor

class ComplementaryTests: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override class func tearDown() {
        super.tearDown()
    }
    
    func testComplementary() {
        let color1 = WonderfulColor(hex: 0x346ae7)
        XCTAssert(color1.complementary.color == WonderfulColor(hex: 0xe7b134))
        let color2 = WonderfulColor(hex: 0xe7b134)
        XCTAssert(color2.complementary.color == WonderfulColor(hex: 0x346ae7))
        
        let color3 = WonderfulColor(hex: 0xff0000)
        XCTAssert(color3.complementary.color == WonderfulColor(hex: 0x00ffff))
        let color4 = WonderfulColor(hex: 0x00ffff)
        XCTAssert(color4.complementary.color == WonderfulColor(hex: 0xff0000))
        
        let color5 = WonderfulColor(hex: 0x80ff00)
        XCTAssert(color5.complementary.color == WonderfulColor(hex: 0x7f00ff))
        let color6 = WonderfulColor(hex: 0x7f00ff)
        XCTAssert(color6.complementary.color == WonderfulColor(hex: 0x80ff00))
        
        let color7 = WonderfulColor(hex: 0x8000ff)
        XCTAssert(color7.complementary.color == WonderfulColor(hex: 0x7fff00))
        let color8 = WonderfulColor(hex: 0x7fff00)
        XCTAssert(color8.complementary.color == WonderfulColor(hex: 0x8000ff))
    }
    
    func testComplementaryWhite() {
        XCTAssert(WonderfulColor.white.complementary.color == WonderfulColor.white)
    }
    
    func testComplementaryBlack() {
        XCTAssert(WonderfulColor.black.complementary.color == WonderfulColor.black)
    }
}
