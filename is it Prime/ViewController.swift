//
//  ViewController.swift
//  is it Prime
//
//  Created by 李宝明 on 16/8/23.
//  Copyright © 2016年 李宝明. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBAction func isItPrimeBtnPressed(_ sender: AnyObject) {
        
        if let text = textField.text {
            
            if let num = Int(text) {
                
                if isItPrime(num: num) {
                    
                    self.result.text = "\(num) is the prime"
                    
                }else {
                     self.result.text = "\(num) is not  the prime"
                }
            }else {
                self.result.text = "please input positive number"
            }
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
    
    func isItPrime(num: Int) -> Bool {
        
        if num <= 1 {
            return false
        }else if num <= 3 {
            return true
        }else {
            
            var i = 2
            
            while i*i <= num {
                if  num % i == 0 {
                    return false
                }
                i += 1
            }
            
            return true
        }
        
        
        
        
    }


}

