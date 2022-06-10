//
//  SampleUITests.swift
//  SampleUITests
//
//  Created by Rudrank Riyam on 10/06/22.
//

import XCTest

class SampleUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        if let failureCount = testRun?.failureCount, failureCount > 0 {
          takeScreenshot()
        }
    }

    func takeScreenshot() {
        let screenshot = XCUIScreen.main.screenshot()
        let attach = XCTAttachment(screenshot: screenshot)
        attach.lifetime = .keepAlways
        add(attach)
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        let helloButton = XCUIApplication().buttons["HELLO"]
        helloButton.tap()

        XCTAssert(app.staticTexts["IS TRUE"].exists)

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
}
