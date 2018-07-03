import Foundation

private let _ModelSingletonSharedInstance = gsState()

open class gsState
{
    open class var sharedInstance : gsState
    {
        return _ModelSingletonSharedInstance
    }
    
    var isTimerMode: Bool = false
    var timerInterval: Double = 10
    var cancelTimer: Bool = false

    var currentPageIndex: Int = 0
    
    init()
    {
        if let interval = UserDefaults.standard.object(forKey: "interval_val") as? String
        {
            timerInterval = gsHelper.stringToDouble(interval)
        }
        
        if let timerEnabled = UserDefaults.standard.object(forKey: "timer_enabled") as? Bool
        {
            isTimerMode = timerEnabled
        }
        
    }
}
