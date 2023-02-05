//
//  ViewController.swift
//  Aksum
//
//  Created by Linda Berhe on 1/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func IntroduceSelfDidTapped(_ sender: UIButton) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        let introduction = " My name is \(firstNameTextField.text!)\(lastNameTextField.text!) and I attend \(schoolNameTextField.text!).I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) pets.It is \(morePetsSwitch.isOn) that I want more pets.Pets make me happy:)"
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        let action = UIAlertAction(title: "Hello,Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)
                
                present(alertController, animated: true, completion: nil)
        
    }
    
    
  
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBOutlet weak var morePetStepper: UIStepper!
    @IBOutlet weak var firstNameTextField:UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField:UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

