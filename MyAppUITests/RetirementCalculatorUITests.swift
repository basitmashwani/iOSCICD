//
//  RetirementCalculatorUITests.swift
//  RetirementCalculatorUITests
//
//  Created by Eduardo Rosas on 8/19/19.
//  Copyright © 2019 Eduardo Rosas. All rights reserved.
//

import XCTest

class RetirementCalculatorUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        XCTContext.runActivity(named: "screenshot") { (activity) in
            let app = XCUIApplication()
            app.textFields["First Number"].tap()
            
                        let key1 = app.keys["1"]
            key1.tap()
            
            let key0 = app/*@START_MENU_TOKEN@*/.keys["0"]/*[[".keyboards.keys[\"0\"]",".keys[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            key0.tap()
            key0.tap()
            
            app.textFields["Second Number"].tap()
            
            let key3 = app/*@START_MENU_TOKEN@*/.keys["3"]/*[[".keyboards.keys[\"3\"]",".keys[\"3\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            key3.tap()
            key0.tap()
            
            
            app.buttons["Calculate"].tap()
            
            let resultText = app.staticTexts.element(matching: .any, identifier: "resultLabel")
            let result = "The result is 3000"
            XCTAssertEqual(resultText.label, result)
        }
    }

}
