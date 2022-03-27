import Foundation
import UIKit

extension UIStackView {
    
    public func addArrangedSubviews(_ subviews: UIView...) {
        subviews.forEach(addArrangedSubview)
    }
}
