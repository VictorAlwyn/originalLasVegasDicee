//
//  ViewController.swift
//  las vegas dicee
//
//  Created by alwyn tablatin on 24/03/2018.
//  Copyright © 2018 alwyn tablatin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var dice1Random : Int = 0
    var dice2Random : Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    @IBOutlet weak var imageViewDice1: UIImageView!
    
    @IBOutlet weak var imageViewDice2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDice()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollPressed(_ sender: UIButton) {
        updateDice()
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDice()
    }
    
    func updateDice(){
        dice1Random = Int(arc4random_uniform(6))
        dice2Random = Int(arc4random_uniform(6))
        imageViewDice1.image = UIImage(named: diceArray[dice1Random])
        imageViewDice2.image = UIImage(named: diceArray[dice2Random])
        
    }
    
}

