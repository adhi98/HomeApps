//
//  ExtCustomViewController.swift
//  HomeApps
//
//  Created by Muhammad Adhi on 17/08/21.
//

import UIKit

extension UIViewController {
    @objc func hideKeyboardWhenTappedAround() {
          let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action:    #selector(dismissKeyboard))
          tap.cancelsTouchesInView = false
          view.addGestureRecognizer(tap)
      }

      @objc func dismissKeyboard() {
          view.endEditing(true)
      }
}
