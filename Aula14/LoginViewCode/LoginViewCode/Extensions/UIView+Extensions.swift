import Foundation
import UIKit

extension UIView {
    
    public func addSubviews(_ subviews: UIView...) {
        subviews.forEach(addSubview)
    }
}
