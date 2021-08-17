//
//  ExtUITextField.swift
//  HomeApps
//
//  Created by Muhammad Adhi on 17/08/21.
//

import UIKit

extension UITextField {
    func addRightView(image: String, isSecure: Bool = false) {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 5, width: 20, height: 20))
        if isSecure {
            
            let button = UIButton(frame: imageView.frame)
            button.setImage(#imageLiteral(resourceName: "eye"), for: .normal)
            button.setImage(#imageLiteral(resourceName: "eye"), for: .selected)
            button.isSelected = true
            button.addTarget(self, action: #selector(onClickEye), for: .touchUpInside)
            let btnContainerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
            btnContainerView.addSubview(button)
            rightView = btnContainerView
            
        }else {
            
            imageView.image = UIImage(named: image)
            let imageContainerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
            imageContainerView.addSubview(imageView)
            rightView = imageContainerView
            
        }
        rightViewMode = .always
        
    }
    
    func addLeftView(image: String) {
        let imageView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        imageView.image = UIImage(named: image)
        let imageContainerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        imageContainerView.addSubview(imageView)
        
//        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
//        leftView = paddingView
        leftView = imageContainerView
        leftViewMode = .always
        
    }
    
    @objc func onClickEye(sender: UIButton) {
        self.isSecureTextEntry = !self.isSecureTextEntry
        sender.isSelected = !sender.isSelected
    }
}
