//
//  ViewController.swift
//  RetirementCalculator
//
//  Created by Eduardo Rosas on 8/19/19.
//  Copyright © 2019 Eduardo Rosas. All rights reserved.
//

import UIKit
import AppCenterCrashes
import AppCenterAnalytics

class ViewController: UIViewController {

    @IBOutlet weak var tfFirstNumber: UITextField!
    @IBOutlet weak var tfSecondNumber: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if MSCrashes.hasCrashedInLastSession() {
            let alert = UIAlertController(title: "Oops", message: "Sorry about that, an error occured.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "It's cool", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        MSAnalytics.trackEvent("navigated_to_calculator")
    }
    
    func multiplyNumbers(_ firstNum: Int, secondNum: Int) -> Int {
        return firstNum * secondNum
    }

    @IBAction func calculateButton_TouchUpInside(_ sender: Any) {
        // MSCrashes.generateTestCrash()
        let firstNumber = Int(tfFirstNumber.text ?? "0")
        let secondNumber = Int(tfSecondNumber.text ?? "0")
        
        if let firstNum = firstNumber, let secondNum = secondNumber {
        let total = multiplyNumbers(firstNum, secondNum: secondNum)
            
              resultLabel.text = "The total result is \(total)"
        }
        
      
   
    }
    
}

