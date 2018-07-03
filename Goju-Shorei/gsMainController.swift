
import UIKit
import AVFoundation

class gsMainController: UIViewController, UIPageViewControllerDelegate
{
    @IBOutlet weak var randomButton: UIBarButtonItem!
    @IBOutlet weak var yellowButton: UIBarButtonItem!
    @IBOutlet weak var orangeButton: UIBarButtonItem!
    @IBOutlet weak var greenButton: UIBarButtonItem!
    @IBOutlet weak var purpleButton: UIBarButtonItem!
    @IBOutlet weak var orangeTap: UIBarButtonItem!
    
    @IBOutlet weak var insetView: UIView!
    
    var pageViewController: UIPageViewController?
    var showOrange: Bool = false
    var showYellow: Bool = false
    var showPurple: Bool = false
    var showGreen: Bool = false
    var inRandom: Bool = false

    
    let systemSoundID: SystemSoundID = 1005
    let nextPageSound: SystemSoundID = 1075
    let finalSound: SystemSoundID = 1005
    
    @IBAction func test(_ sender: Any)
    {
    }
    
    let gsData = gsState.sharedInstance

    @IBAction func randomTap(_ sender: AnyObject)
    {
        inRandom = !inRandom
        setTechArray()
        
        if (inRandom)
        {
            randomButton.tintColor = UIColor.lightGray
        }
        else
        {
            randomButton.tintColor = UIColor.white
        }

        if (showOrange || showYellow || showPurple || showGreen)
        {
            updatePages()
        }
        else
        {
            clearPages()
        }
    }
    
    @IBAction func greenTap(_ sender: AnyObject)
    {
        showGreen = !showGreen
        setTechArray()
        if (showGreen)
        {
            greenButton.tintColor = UIColor.lightGray
        }
        else
        {
            greenButton.tintColor = gsHelper.greenColor()
        }
        
        if (showOrange || showYellow || showPurple || showGreen)
        {
            updatePages()
        }
        else
        {
            clearPages()
        }
    }
    
    @IBAction func purpleTap(_ sender: AnyObject)
    {
        showPurple = !showPurple
        setTechArray()
        if (showPurple)
        {
            purpleButton.tintColor = UIColor.lightGray
        }
        else
        {
            purpleButton.tintColor = gsHelper.purpleColor()
        }

        if (showOrange || showYellow || showPurple || showGreen)
        {
            updatePages()
        }
        else
        {
            clearPages()
        }
    }
 
    @IBAction func orangeTap(_ sender: AnyObject)
    {
        showOrange = !showOrange
        setTechArray()
        if (showOrange)
        {
            orangeButton.tintColor = UIColor.lightGray
        }
        else
        {
            orangeButton.tintColor = UIColor.orange
        }
        
        if (showOrange || showYellow || showPurple || showGreen)
        {
            updatePages()
        }
        else
        {
            clearPages()
        }
    }
    
    @IBAction func yellowTap(_ sender: AnyObject)
    {
        showYellow = !showYellow
        setTechArray()
        if (showYellow)
        {
            yellowButton.tintColor = UIColor.lightGray
        }
        else
        {
            yellowButton.tintColor = UIColor.yellow
        }
        
        if (showOrange || showYellow || showPurple || showGreen)
        {
            updatePages()
        }
        else
        {
            clearPages()
        }
    }

    func clearPages()
    {
        insetView.isHidden = true
        modelController.activeTechs = []
    }
    
    func updatePages()
    {
        insetView.isHidden = false
        let startingViewController: gsDataViewCont = self.modelController.viewControllerAtIndex(0, storyboard: self.storyboard!)!
        let viewControllers = [startingViewController]
        self.pageViewController!.setViewControllers(viewControllers, direction: .forward, animated: false, completion: {done in })
        
    }
    
    @IBAction func nextTest(_ sender: Any)
    {
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool)
    {
        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.navigationController?.navigationBar.titleTextAttributes = (gsHelper.getTitleBarAttributes(textColor: UIColor.white) as! [NSAttributedStringKey : Any])

        self.pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
        self.pageViewController!.delegate = self
        
        self.pageViewController!.dataSource = self.modelController
        
        insetView.addSubview(self.pageViewController!.view)
        
        // Set the page view controller's bounds using an inset rect so that self's view is visible around the edges of the pages.
        var pageViewRect = insetView.bounds
        if UIDevice.current.userInterfaceIdiom == .pad
        {
            pageViewRect = pageViewRect.insetBy(dx: 10.0, dy: 10.0)
        }
        
        self.pageViewController!.view.frame = pageViewRect
        self.pageViewController!.didMove(toParentViewController: self)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    var modelController: gsModel
    {
        if _modelController == nil {
            _modelController = gsModel()
        }
        return _modelController!
    }
    
    var _modelController: gsModel? = nil

    
    func setTechArray()
    {
        modelController.activeTechs = []
        if (showYellow)
        {
            modelController.activeTechs += modelController.yellowTechs
        }
        
        if (showOrange)
        {
            modelController.activeTechs += modelController.orangeTechs
        }
        
        if (showPurple)
        {
            modelController.activeTechs += modelController.purpleTechs
        }
        
        if (showGreen)
        {
            modelController.activeTechs += modelController.greenTechs
        }
        
        if (inRandom)
        {
            modelController.randomTechs = modelController.activeTechs
            modelController.activeTechs = []
            
            while modelController.randomTechs.count > 0
            {
                let rndTech = Int(arc4random_uniform(UInt32(modelController.randomTechs.count)))
                modelController.activeTechs.append(modelController.randomTechs[rndTech])
                modelController.randomTechs.remove(at: rndTech)
            }
            
        }
        
        var x: Int = 0
        for page in modelController.activeTechs
        {
            page.activeIndex = x
            x += 1
        }
        
    }
}

extension UIPageViewController
{
    
    func goToNextPage()
    {
        
        guard let currentViewController = self.viewControllers?.first else { return }
        
        guard let nextViewController = dataSource?.pageViewController( self, viewControllerAfter: currentViewController ) else { return }
        
        setViewControllers([nextViewController], direction: .forward, animated: true, completion: nil)
        
    }
    
    
    func goToPreviousPage()
    {
        guard let currentViewController = self.viewControllers?.first else { return }
        
        guard let previousViewController = dataSource?.pageViewController( self, viewControllerBefore: currentViewController ) else { return }
        
        setViewControllers([previousViewController], direction: .reverse, animated: true, completion: nil)
        
    }
    
}
