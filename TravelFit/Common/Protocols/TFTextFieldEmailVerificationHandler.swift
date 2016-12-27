//
//  TFTextFieldEmailVerificationHandler.swift
//  TravelFit
//
//  Created by Ronald Hernandez on 12/22/16.
//  Copyright © 2016 TravelFit. All rights reserved.
//

import UIKit

final class TFTextFieldEmailVerificationHandler: NSObject, UITextFieldDelegate {

    var responder: UITextFieldDelegate?

    public var state: TFTextFieldState = .valid

    //MARK: UITextFieldDelegate

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

        if let email = textField.text {
            if verify(email) {
                textField.layer.borderColor = UIColor.clear.cgColor
                textField.layer.borderWidth = 0.0
                state = .valid
            } else {
                textField.layer.borderColor = UIColor.red.cgColor
                textField.layer.borderWidth = 2.0
                state = .invalid
            }
        }

        return true
    }

    //MARK: Private Helpers
    
    private func verify(_ email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: email)
    }
    
}
