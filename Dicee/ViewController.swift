//
//  ViewController.swift
//  Dicee
//
//  Created by Joshua Maxcy on 12/23/18.
//  Copyright © 2018 Joshua Maxcy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dice1Val: Int = 0
    var dice2Val: Int = 0

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    func updateDice() {
        dice1Val = Int(arc4random_uniform(6)) + 1
        dice2Val = Int(arc4random_uniform(6)) + 1
        
        diceImageView1.image = UIImage(named: "dice\(dice1Val)")
        diceImageView2.image = UIImage(named: "dice\(dice2Val)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDice()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDice()

    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDice()
    }

}

