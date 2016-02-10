//
//  ViewController.swift
//  Add-App
//
//  Created by Muhammad Ali on 2016-02-08.
//  Copyright © 2016 Muhammad Ali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let maxSum = 100
    var runningSum = 0
    var multiple = 0
    
    
    @IBOutlet weak var multiplesTitle: UIImageView!
    @IBOutlet weak var whatMultipleToAdd: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var instructionLbl: UILabel!
    @IBOutlet weak var equationTxt: UILabel!
    
    @IBAction func playPressed(sender: UIButton!) {
        if whatMultipleToAdd.text != nil && whatMultipleToAdd.text != "" {
        
        multiplesTitle.hidden = true
        playBtn.hidden = true
        whatMultipleToAdd.hidden = true
        
        addBtn.hidden = false
        equationTxt.hidden = false
        
        multiple = Int(whatMultipleToAdd.text!)!
        runningSum = 0
        }
        
    }

    
    @IBAction func addBtnPressed(send: AnyObject!) {
         
    
        let newSum = runningSum + multiple
        
        multiply(runningSum, num2:multiple, num3: newSum)
        
        runningSum += multiple
        
        if doneGame() {
            restartGame()
        }
        
    }
    
    
    func multiply(num:Int, num2:Int, num3:Int) {
        
        equationTxt.text = "\(num) + \(num2) = \(num3)"
        
    }
    
    func doneGame() -> Bool {
        if maxSum >= runningSum {
            return true
        }else {
            return false
        }
        
    }

    func restartGame() {
        multiple = 0
        whatMultipleToAdd.text = ""
        multiplesTitle.hidden = false
        playBtn.hidden = false
        whatMultipleToAdd.hidden = false
        
        addBtn.hidden = true
        equationTxt.hidden = true
    }
    
    
}

