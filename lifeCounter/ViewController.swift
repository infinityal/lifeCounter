//
//  ViewController.swift
//  lifeCounter
//
//  Created by 郑智健 on 4/21/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var p1: UILabel!
    @IBOutlet weak var p1PlusOne: UIButton!
    @IBOutlet weak var p1PlusFive: UIButton!
    @IBOutlet weak var p1MinusOne: UIButton!
    @IBOutlet weak var p1MinusFive: UIButton!
    @IBOutlet weak var p2: UILabel!
    @IBOutlet weak var p2PlusOne: UIButton!
    @IBOutlet weak var p2MinusOne: UIButton!
    @IBOutlet weak var p2PlusFive: UIButton!
    @IBOutlet weak var p2MinusFive: UIButton!
    
    @IBOutlet weak var lostLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    var p1Life = 20;
    var p2Life = 20;
    
    func updateValue(player: Int) {
        if player == 1 {
            p1.text = String(p1Life)
            if p1Life <= 0 {
                lostLabel.text = "Player 1 LOSES!"
            }
        } else {
            p2.text = String(p2Life)
            if p2Life <= 0 {
                lostLabel.text = "Player 2 LOSES!"
            }
        }
    }
    
    @IBAction func p1MinusFive(_ sender: UIButton) {
        p1Life -= 5;
        updateValue(player: 1);
    }
    
    @IBAction func p1MinusOne (_ sender: UIButton) {
        p1Life -= 1;
        updateValue(player: 1);
    }
    
    @IBAction func p2MinusOne(_ sender: UIButton) {
        p2Life -= 1;
        updateValue(player: 2);
    }
    
    @IBAction func p2MinusFive(_ sender: UIButton) {
        p2Life -= 5;
        updateValue(player: 2);
    }
    
    @IBAction func p1PlusOne(_ sender: UIButton) {
        p1Life += 1;
        updateValue(player: 1);
    }
    
    @IBAction func p1PlusFive(_ sender: UIButton) {
        p1Life += 5;
        updateValue(player: 1);
    }
    
    @IBAction func p2PlusOne(_ sender: UIButton) {
        p2Life += 1;
        updateValue(player: 2);
    }
    
    @IBAction func p2PlusFive(_ sender: UIButton) {
        p2Life += 5;
        updateValue(player: 2);
    }


}

