
import UIKit
import AVFoundation

class gsTimerSetup: UIViewController
{
    let gsData = gsState.sharedInstance

    @IBAction func test(_ sender: Any)
    {
        AudioServicesPlaySystemSound (SystemSoundID(gsHelper.stringToDouble(intervalText.text!)))
    }
    
    @IBOutlet weak var intervalText: UITextField!
    @IBOutlet weak var enableSwitch: UISwitch!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.preferredContentSize = CGSize(width: 350.0, height: 350.0);

        self.navigationController?.navigationBar.titleTextAttributes = (gsHelper.getTitleBarAttributes(textColor: UIColor.black) as! [NSAttributedStringKey : Any])

        intervalText.text = "\(gsData.timerInterval)"
        enableSwitch!.isOn = gsData.isTimerMode

    }

    @IBAction func intervalChanged(_ sender: Any)
    {
        gsData.timerInterval = gsHelper.stringToDouble(intervalText.text!)
        UserDefaults.standard.set("\(gsData.timerInterval)", forKey: "interval_val")
    }
    
    @IBAction func enableChange(_ sender: Any)
    {
        if (enableSwitch!.isOn)
        {
            gsData.isTimerMode = true
        }
        else
        {
            gsData.isTimerMode = false
        }
        
        UserDefaults.standard.set(gsData.isTimerMode, forKey: "timer_enabled")
        
        NotificationCenter.default.post(name: Notification.Name(rawValue: "TimerEnableChange"), object:nil)

    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
