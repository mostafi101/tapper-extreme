//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Mostafijur Rahaman on 6/4/16.
//  Copyright © 2016 Mostafijur Rahaman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var coinBtn: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    @IBAction func playBtnPressed(sender: UIButton!){
        logoImg.hidden = true
        howManyTapsTxt.hidden = true
        playBtn.hidden = true
        
        coinBtn.hidden = false
        tapsLabel.hidden = false
    }

}

