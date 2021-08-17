//
//  SaranViewController.swift
//  HomeApps
//
//  Created by Muhammad Adhi on 17/08/21.
//

import UIKit

class SaranViewController: UIViewController {
    @IBOutlet weak var SaranTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SaranTextView.customTextView()
        self.hideKeyboardWhenTappedAround()
    }
    

}
