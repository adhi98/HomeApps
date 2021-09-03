//
//  SignInViewController.swift
//  HomeApps
//
//  Created by Muhammad Adhi on 17/08/21.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var userNameTxtField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        super.viewWillAppear(animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
        super.viewWillDisappear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTxtField.addLeftView(image: "Person")
        passTextField.addLeftView(image: "Lock")
    }
 

}
