import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var background:UIView!
    @IBOutlet weak var scoreLabel:UILabel!
    @IBOutlet weak var increase:UIButton!
    @IBOutlet weak var slider:UISlider!
    @IBOutlet weak var sliderValue:UILabel!

    
    var score = 0;
    var mult = 1
    
    func updateScore()
    {
        scoreLabel?.text = String(score)
    }
    
    func increaseScore()
    {
        mult = getSliderValue(slider)
        score = score + mult
        updateScore()
        
        // background color updater
        
        if(score > 99)
        {
            background.backgroundColor = UIColor.green
        }
        if(score > 199)
        {
            background.backgroundColor = UIColor.yellow
        }
        if(score > 299)
        {
            background.backgroundColor = UIColor.systemPink
        }
        if(score > 399)
        {
            background.backgroundColor = UIColor.purple
        }
        if(score > 499)
        {
            background.backgroundColor = UIColor.gray
        }
        if(score > 599)
        {
            background.backgroundColor = UIColor.orange
        }
        if(score > 799)
        {
            background.backgroundColor = UIColor.red
        }
        if(score > 999)
        {
            background.backgroundColor = UIColor.black
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        mult = currentValue
            
        sliderValue.text = "\(slider.value)"
    }
    
    func getSliderValue(_ sender: UISlider) -> Int
    {
        return Int(sender.value)
    }
    
    @IBAction func buttonPressed(_ sender: UIButton)
    {
        //scoreLabel.text = "\(2)"
        increaseScore()
        //background.backgroundColor = UIColor.red
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateScore()
        
    }


}

