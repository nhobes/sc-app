//
//  ViewController.swift
//  Is it Prime
//
//  Created by Nicolas Hoban on 8/06/2016.
//  Copyright © 2016 Nicolas Hoban. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number: UITextField!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func buttonPressed(sender: AnyObject) {
    
          var numberInt = Int(number.text!)
        
        if numberInt != nil {
            
            
            var unwrappedNumber = numberInt!
            
            var isPrime = true
            
            if unwrappedNumber == 1 {
                
                isPrime = false
                
            }
            
            if unwrappedNumber != 2 && unwrappedNumber != 1 {
                
                for var i = 2; i < unwrappedNumber; i++ {
                    
                    if unwrappedNumber % i == 0 {
                        
                        isPrime = false
                    }
            
        }
    }
    
            if isPrime == true {
                
                resultLabel.text = "\(unwrappedNumber) is prime!"
                
                
            } else {
                    
                resultLabel.text = "\(unwrappedNumber) is not prime!"
                
            }
            
            
        } else {
        
            resultLabel.text = "Please enter a number in the box"
        
    
    }
    
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

 