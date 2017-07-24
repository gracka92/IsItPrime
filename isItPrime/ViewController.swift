//
//  ViewController.swift
//  isItPrime
//
//  Created by Gracjana Leonowicz on 24.07.2017.
//  Copyright © 2017 Gracjana Leonowicz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    @IBAction func isItPrime(_ sender: Any) {
        
        if let userEnterString = numberTextField.text {
        
            let userEnterInteger = Int(userEnterString)
            
            if let number = userEnterInteger {
                var isPrime = true
                
                if number == 1 {
                    isPrime = false
                }
                
                var i = 2
                
                while i < number {
                    if number % i == 0 {
                        isPrime = false
                    }
                
                    i += 1
                }
                if isPrime {
                    resultLabel.text = "\(number) is prime!"
                    
                } else {
                    resultLabel.text = "\(number) is not prime!"
                }
                
            } else {
                resultLabel.text = "Please enter a positive number"
            }
        }
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

//let number = 17

//var isPrime = true
//
//if number == 1 {
//    isPrime = false
//}
//
//var i = 2
//
//while i < number {
//    if number % i == 0 {
//        isPrime = false
//    }
//
//    i += 1
//}
//
//print isPrime

