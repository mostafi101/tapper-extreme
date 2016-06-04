//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Mostafijur Rahaman on 6/4/16.
//  Copyright © 2016 Mostafijur Rahaman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Properties
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var coinBtn: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    @IBAction func onCoinBtnTapped(sender: UIButton!){
        currentTaps += 1
        updateCurrentTaps()
        
        if isGameOver(){
            restartGame()
        }
    }
    
    @IBAction func playBtnPressed(sender: UIButton!){
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != ""{
            logoImg.hidden = true
            howManyTapsTxt.hidden = true
            playBtn.hidden = true
            
            coinBtn.hidden = false
            tapsLabel.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            updateCurrentTaps()
        }
    }
    
    func restartGame(){
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImg.hidden = false
        howManyTapsTxt.hidden = false
        playBtn.hidden = false
        
        coinBtn.hidden = true
        tapsLabel.hidden = true
    }
    
    func isGameOver() -> Bool{
        if currentTaps >= maxTaps{
            return true
        }else{
            return false
        }
    }
    
    func updateCurrentTaps(){
        tapsLabel.text = "\(currentTaps) taps"
    }

}

