import UIKit

class gsDataViewCont: UIViewController
{
    @IBOutlet weak var techDesc: UILabel!
    @IBOutlet weak var techSub1: UILabel!
    @IBOutlet weak var techSub2: UILabel!
    @IBOutlet weak var techSub3: UILabel!
    @IBOutlet weak var techSub4: UILabel!
    @IBOutlet weak var techSub5: UILabel!
    @IBOutlet weak var techNote: UILabel!
    @IBOutlet weak var techVerses: UILabel!
    @IBOutlet weak var techNumber: UILabel!
    
    
    @IBOutlet weak var bullet1: UIImageView!
    @IBOutlet weak var bullet2: UIImageView!
    @IBOutlet weak var bullet3: UIImageView!    
    @IBOutlet weak var bullet4: UIImageView!
    @IBOutlet weak var bullet5: UIImageView!
    
    let gsData = gsState.sharedInstance
    var dataObject: gsTechniques = gsTechniques()

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        gsData.currentPageIndex = dataObject.activeIndex

        
        techDesc.text = dataObject.techDesc

        
        techSub1.text = dataObject.techStep1
        if (dataObject.techStep1 != "")
        {
            bullet1.isHidden = false
        }
        else
        {
            bullet1.isHidden = true
        }
        
        techSub2.text = dataObject.techStep2
        if (dataObject.techStep2 != "")
        {
            bullet2.isHidden = false
        }
        else
        {
            bullet2.isHidden = true
        }
        
        
        techSub3.text = dataObject.techStep3
        if (dataObject.techStep3 != "")
        {
            bullet3.isHidden = false
        }
        else
        {
            bullet3.isHidden = true
        }
        
        techSub4.text = dataObject.techStep4
        if (dataObject.techStep4 != "")
        {
            bullet4.isHidden = false
        }
        else
        {
            bullet4.isHidden = true
        }
        
        
        techSub5.text = dataObject.techStep5
        if (dataObject.techStep5 != "")
        {
            bullet5.isHidden = false
        }
        else
        {
            bullet5.isHidden = true
        }
        
        if (dataObject.techNotes != "")
        {
            techNote.text = "⚠️  "+dataObject.techNotes
        }
        else
        {
            techNote.text = dataObject.techNotes
        }

        techVerses.text = dataObject.techVerses
        techNumber.text = "\(dataObject.techNumber)"
        if (dataObject.techColor == "Orange")
        {
            techNumber.textColor = UIColor.orange
        }
        else if (dataObject.techColor == "Yellow")
        {
            techNumber.textColor = UIColor.yellow
        }
        else if (dataObject.techColor == "Purple")
        {
            techNumber.textColor = gsHelper.purpleColor()
        }
        else if (dataObject.techColor == "Green")
        {
            techNumber.textColor = gsHelper.greenColor()
        }
    }
    

}
