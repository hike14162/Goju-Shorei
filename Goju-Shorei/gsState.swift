import Foundation

private let _ModelSingletonSharedInstance = gsState()

open class gsState
{
    open class var sharedInstance : gsState
    {
        return _ModelSingletonSharedInstance
    }
    
    var currentPageIndex: Int = 0
    
    init()
    {
    }
}
