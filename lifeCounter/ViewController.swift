//
//  ViewController.swift
//  lifeCounter
//
//  Created by 郑智健 on 4/21/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var p1: UIView!
    @IBOutlet weak var p2: UIView!
    @IBOutlet weak var p3: UIView!
    @IBOutlet weak var p4: UIView!
    @IBOutlet weak var p5: UIView!
    @IBOutlet weak var p6: UIView!
    @IBOutlet weak var p7: UIView!
    @IBOutlet weak var p8: UIView!
    @IBOutlet weak var p1L: UILabel!
    @IBOutlet weak var p2L: UILabel!
    @IBOutlet weak var p3L: UILabel!
    @IBOutlet weak var p4L: UILabel!
    @IBOutlet weak var p5L: UILabel!
    @IBOutlet weak var p6L: UILabel!
    @IBOutlet weak var p7L: UILabel!
    @IBOutlet weak var p8L: UILabel!
    @IBOutlet weak var addBttn: UIImageView!
    @IBOutlet weak var historyBttn: UIButton!
    @IBOutlet weak var lostLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        p5.isHidden = true
        p6.isHidden = true
        p7.isHidden = true
        p8.isHidden = true
    }
    
    func updateValue(player: Int, value: Int) {
        if player == 1 {
            p1L.text = String(value)
            if value <= 0 {
                lostLabel.text = "Player 1 LOSES!"
            }
        } else {
            
            if value <= 0 {
                lostLabel.text = "Player 2 LOSES!"
            }
        }
    }



}

