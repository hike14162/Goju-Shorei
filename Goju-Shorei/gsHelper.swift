
import Foundation
import UIKit

open class gsHelper
{
    
    open class func purpleColor() -> UIColor
    {
        return UIColor(red: 0.705, green: 0.07, blue: 0.745, alpha: 1) 
    }
    
    open class func greenColor() -> UIColor
    {
        return UIColor(red: 0.0, green: 0.76, blue: 0.0, alpha: 1)
    }
    
    open class func getTitleBarAttributes(textColor: UIColor) -> NSDictionary
    {
        let shadow = NSShadow()
        shadow.shadowColor = UIColor.clear
        
        return NSDictionary(objects: [textColor, shadow, UIFont(name: "Optima", size: 26.0)!], forKeys: [NSAttributedStringKey.foregroundColor as NSCopying, NSAttributedStringKey.shadow as NSCopying, NSAttributedStringKey.font as NSCopying])
    }


}

