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

    lazy var textField = UITextField()
    lazy var emailHandler = TFTextFieldEmailVerificationHandler()
    
    override func setUp() {
        super.setUp()

        self.textField.delegate = emailHandler
    }

    func testInvalidEmail() {
        textField.text = "ronaldgmail.com"
        textField.endEditing(true)
        XCTAssertEqual(emailHandler.state, .invalid)
    }

    func testInvalidEmailWithOutDomain() {
        textField.text = "ronald@.com"
        textField.endEditing(true)
        XCTAssertEqual(emailHandler.state, .invalid)
    }
    
}
