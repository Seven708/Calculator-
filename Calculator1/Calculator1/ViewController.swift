
//
//  ViewController.swift
//  Calculator1
//
//  Created by Jeremiah Johnson on 4/25/15.
 //  Copyright (c) 2015 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var screen: UITextField!
    var firstNum = Int()
    var secondNum = Int()
    var answer = Int()
    var typedNum = false
    var operations = " "
    
     @IBAction func calcNumbers(sender: UIButton) {
            var calcNumbers = sender.currentTitle
            if typedNum == true {
                screen.text = screen.text! + calcNumbers!
            }
            else {
                screen.text = calcNumbers;
            }
            typedNum = true
    }
    
    
    @IBAction func operations(sender: UIButton) {
        typedNum = false
        firstNum = screen.text!.toInt()!
        operations = sender.currentTitle!
    }
    
    
    
    @IBAction func equals(sender: UIButton) {
        secondNum = screen.text!.toInt()!
        if operations == " / " {
            answer = firstNum / secondNum
        }
            
        else if operations == " X " {
            answer = firstNum * secondNum
        }
        else if operations == " - " {
            answer = firstNum - secondNum
        }
        else {
            answer = firstNum + secondNum
        }
        screen.text = "\(answer)"
        

    }
    
    
    @IBAction func clear(sender: UIButton) {
        firstNum = 0
        secondNum = 0
        answer = 0
        typedNum = false
        screen.text = "\(answer)"
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

