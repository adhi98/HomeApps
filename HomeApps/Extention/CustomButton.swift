
import UIKit

class CustomButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setCustomButton()
        
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setCustomButton()
    }
    
    func setCustomButton() {
        layer.cornerRadius = 5
        clipsToBounds = true
    }
}

