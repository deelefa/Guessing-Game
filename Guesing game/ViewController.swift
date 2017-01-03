//
//  ViewController.swift
//  Guesing game
//
//  Created by Oladele Fadairo on 11/30/16.
//  Copyright © 2016 Oladele Fadairo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var checkStat: UILabel!
    
    @IBOutlet var textField_1: UITextField!
    
    
    @IBAction func checkRand(_ sender: Any) {
        
        let randNo = Int(arc4random_uniform(6))
        
        var textFieldInt = Int(textField_1.text!)!
        
        if textFieldInt == randNo{
            checkStat.text = "You guessed right"
            print(checkStat.text!)
        }
        else{
            checkStat.text = "You guessed wrong"
            print(checkStat.text!)
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

