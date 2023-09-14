//
//  SwitchStepController.swift
//  UIExample
//
//  Created by Sam Yao on 9/12/23.
//

import UIKit


class SwitchStepController: UIViewController {

    @IBOutlet weak var numberStepper: UIStepper!
    @IBOutlet weak var numberLabel: UILabel!

    
    lazy var numberModel = {
        return NumberModel.sharedInstance()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.numberLabel.text = "\(Int(numberModel.getRandomInt()))"
        self.numberStepper.value = Double(numberModel.getRandomInt()) 
    }

    @IBAction func numberStepper(_ sender: UIStepper) {
        numberModel.setRandomInt(Int(sender.value))
        self.numberLabel.text = "\(numberModel.getRandomInt())"
    }
    
    @IBAction func dankModeSwitch(_ sender: UISwitch) {
        if sender.isOn{
            let alert = UIAlertController(title: "Dank Mode Activated", message: "Dank Mode has been activated.\n\n📣📣📣📣📣📣\n\nPrepare yourself.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("I accept this fate", comment: "This closes alert"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
            }))

            // This part of code inits alert view
            self.present(alert, animated: true, completion: nil)
            
            self.view.backgroundColor = UIColor.green
        }else{
            self.view.backgroundColor = UIColor.white
        }
    }
    
}
