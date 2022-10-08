//
//  ViewController.swift
//  calci
//
//  Created by APPLE on 08/10/22.
//

import UIKit

class ViewController: UIViewController {
    var numberonscreen:Double=0
    var previousnumber:Double=0
    var performmathop=false
    var operation=0
    
    
    
    @IBOutlet weak var calcLabel: UILabel!
    
    @IBAction func operatorBtn(_ sender: UIButton) {
        if calcLabel.text != "" && sender.tag != 16 && sender.tag != 15{previousnumber=Double(calcLabel.text!)!
            if sender.tag == 11{
                calcLabel.text="+"
            }
            else if sender.tag == 12{
                calcLabel.text="-"
            }
            else if sender.tag == 13{
                calcLabel.text="/"
            }
            else if sender.tag == 14{
                calcLabel.text="*"
            }
            performmathop=true
            operation=sender.tag
            
            
        }
        else if sender.tag == 15{
            if operation==11{
                calcLabel.text=String(previousnumber+numberonscreen)
            }
            else if operation==12{
                calcLabel.text=String(previousnumber-numberonscreen)
            }
            else if operation==13{
                calcLabel.text=String(previousnumber/numberonscreen)
            }
            if operation==14{
                calcLabel.text=String(previousnumber*numberonscreen)
            }
        }
        else if sender.tag == 16{
            calcLabel.text=""
            previousnumber=0
            numberonscreen=0
            operation=0
            
        }
    }
    
    @IBAction func operandBtn(_ sender: UIButton) {
        if performmathop == true{
            calcLabel.text=String(sender.tag-1)
            numberonscreen=Double(calcLabel.text!)!
            performmathop=false
            
    }
        else{
            calcLabel.text=calcLabel.text! + String(sender.tag-1)
            numberonscreen=Double(calcLabel.text!)!
        }
    }
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

