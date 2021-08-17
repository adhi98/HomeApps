
import UIKit

class CustomView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setCustomView()
        
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setCustomView()
    }
    
    func setCustomView() {
        layer.cornerRadius = 5
        clipsToBounds = true
    }
}

