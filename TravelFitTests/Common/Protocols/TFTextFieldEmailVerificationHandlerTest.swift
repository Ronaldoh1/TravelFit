//
//  TFTextFieldEmailVerificationHandlerTest.swift
//  TravelFit
//
//  Created by Ronald Hernandez on 12/26/16.
//  Copyright © 2016 TravelFit. All rights reserved.
//

import XCTest
@testable import TravelFit

class TFTextFieldEmailVerificationHandlerTest: XCTestCase, UITextFieldDelegate {

    var textField = UITextField()
    var handler = TFTextFieldEmailVerificationHandler()
    
    override func setUp() {
        super.setUp()

        self.textField.delegate = handler
    }

    func testInvalidInput() {
        textField.text = "ronaldgmail.com"
        XCTAssertEqual(handler.state, .invalid)
    }
    
}
