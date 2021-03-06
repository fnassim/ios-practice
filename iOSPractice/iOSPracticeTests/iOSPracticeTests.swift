//
//  iOSPracticeTests.swift
//  iOSPracticeTests
//
//  Created by Fadel Nassim on 4/1/19.
//  Copyright © 2019 Fadel Nassim. All rights reserved.
//

import XCTest
import EarlGrey

@testable import iOSPractice
class iOSPracticeTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

        func testExample() {
            EarlGrey.selectElement(with:grey_accessibilityID("searchMe")).perform(grey_typeText("dogs\n"))
            sleep(1)
            EarlGrey.selectElement(with: grey_kindOfClass(ImageTableViewCell.self)).atIndex(0).perform(grey_tap())
            EarlGrey.selectElement(with: grey_buttonTitle("Back")).perform(grey_tap())
            EarlGrey.selectElement(with:grey_accessibilityID("searchMe")).perform(grey_clearText())
            EarlGrey.selectElement(with:grey_accessibilityID("searchMe")).perform(grey_typeText("beach\n"))
            sleep(1)
            EarlGrey.selectElement(with: grey_kindOfClass(ImageTableViewCell.self)).atIndex(0).perform(grey_tap())
            EarlGrey.selectElement(with: grey_buttonTitle("Back")).perform(grey_tap())
        }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
