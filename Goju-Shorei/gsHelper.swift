
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

    open class func stringToDouble(_ stg: String) -> Double
    {
        var string: NSString = NSString(string: strip(OrigStg: stg))
        string = string.replacingOccurrences(of: ",", with: "") as NSString
        var dblVal = string.doubleValue
        let fmtr = NumberFormatter()
        fmtr.usesGroupingSeparator = true
        
        let dblVal2 = fmtr.number(from: string as String)?.doubleValue
        if let dv = dblVal2
        {
            dblVal = dv
        }
        
        dblVal = round(dblVal * 100)/100
        return dblVal
    }

    open class func strip(OrigStg origStg: String) -> String
    {
        var newStg = origStg
        if (origStg.count > 0)
        {
            var firstChar = origStg.first
            let isNeg: Bool = (firstChar == "-")
            
            let dec: CharacterSet = CharacterSet.decimalDigits.inverted
            newStg = origStg.trimmingCharacters(in: dec)
            
            firstChar = "0"
            
            if (newStg.count > 0)
            {
                firstChar = newStg.first
            }
            
            if ((isNeg) && (firstChar != "-"))
            {
                newStg = "-"+newStg;
            }
        }
        return newStg
    }

}

