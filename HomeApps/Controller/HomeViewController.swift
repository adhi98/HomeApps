//
//  HomeViewController.swift
//  HomeApps
//
//  Created by Muhammad Adhi on 16/08/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var profileView: UIView!
    @IBOutlet weak var noRekView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        noRekView.configBorderView()
        profileView.configBorderView()
    }
    

}
