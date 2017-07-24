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
    @IBOutlet weak var resultLabel: UILabel!
	
	@IBAction func isItPrime(_ sender: Any) {
		if let userEnterString = numberTextField.text {
			let userEnterInteger = Int(userEnterString)
			if let number = userEnterInteger {
				if isItPrime(number: number) {
					resultLabel.text = "\(number) is prime!"
				} else {
					resultLabel.text = "\(number) is not prime!"
				}
			} else {
				resultLabel.text = "Please enter a positive number"
			}
		}
	}
	
	
	private func isItPrime(number: Int) -> Bool {
		if number == 1 {
			return false
		}
		
		var i = 2
		
		while i < number {
			if number % i == 0 {
				return false
			}
			i += 1
		}
		
		return true
	}
}
