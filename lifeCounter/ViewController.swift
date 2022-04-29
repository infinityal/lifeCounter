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
    @IBOutlet weak var historyBttn: UIButton!
    @IBOutlet weak var lostLabel: UILabel!
    @IBOutlet weak var addBttn: UIButton!
    @IBOutlet weak var removeBttn: UIButton!
    @IBOutlet weak var p1Field: UITextField!
    @IBOutlet weak var p2Field: UITextField!
    @IBOutlet weak var p3Field: UITextField!
    @IBOutlet weak var p4Field: UITextField!
    @IBOutlet weak var p5Field: UITextField!
    @IBOutlet weak var p6Field: UITextField!
    @IBOutlet weak var p7Field: UITextField!
    @IBOutlet weak var p8Field: UITextField!
    
    var playerLife = [20,20,20,20,20,20,20,20]
    var OriginLife = [20,20,20,20,20,20,20,20]
    var playCount: Int = 4
    var currentHistory: [String] = []
    
    public var HV = HistoryViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        p5.isHidden = true
        p6.isHidden = true
        p7.isHidden = true
        p8.isHidden = true
    }
    
    func gameOver() {
        if playerLife.reduce(0,+) != 120 {
            addBttn.isHidden = true
            removeBttn.isHidden = true
        }
        let minLife = playerLife.min()
        if minLife! <= 0 {
            let loser = playerLife.firstIndex(of: minLife!)! + 1
            lostLabel.text = "Player " + String(loser) + " LOSES!"
        }
        HV.history = currentHistory
    }
    
    @IBAction func reset(_ sender: Any) {
        playerLife = OriginLife
        playCount = 4
        p5.isHidden = true
        p6.isHidden = true
        p7.isHidden = true
        p8.isHidden = true
        addBttn.isHidden = false
        removeBttn.isHidden = false
        p1L.text = "20"
        p2L.text = "20"
        p3L.text = "20"
        p4L.text = "20"
        p5L.text = "20"
        p6L.text = "20"
        p7L.text = "20"
        p8L.text = "20"
    }
    
    @IBAction func addPlayer(_ sender: Any) {
        if playCount < 9 {
            playCount += 1
            if playCount == 3 {
                p3.isHidden = false
            } else if playCount == 4 {
                p4.isHidden = false
            } else if playCount == 5 {
                p5.isHidden = false
            } else if playCount == 6 {
                p6.isHidden = false
            } else if playCount == 7 {
                p7.isHidden = false
            } else if playCount == 8 {
                p8.isHidden = false
            }
            addBttn.isHidden = true
        } else {
            addBttn.isHidden = false
        }
    }
    
    @IBAction func removePlayer(_ sender: Any) {
        if playCount > 2 {
            removeBttn.isHidden = false
        }
        if playCount > 1 {
            playCount -= 1
            if playCount == 2 {
                p3.isHidden = true
                removeBttn.isHidden = true
            } else if playCount == 3 {
                p4.isHidden = true
            } else if playCount == 4 {
                p5.isHidden = true
            } else if playCount == 5 {
                p6.isHidden = true
            } else if playCount == 6 {
                p7.isHidden = true
            } else if playCount == 7 {
                p8.isHidden = true
            }
        }
    }
    
    @IBAction func p1AddOne(_ sender: Any) {
        playerLife[0] += 1
        p1L.text = String(playerLife[0])
        currentHistory.append("Player 1 Gain 1 Life!")
        gameOver()
    }
    
    @IBAction func p1MinusOne(_ sender: Any) {
        playerLife[0] -= 1
        p1L.text = String(playerLife[0])
        HV.history.append("Player 1 Lose 1 Life!")
        gameOver()
    }
    
    @IBAction func p2AddOne(_ sender: Any) {
        playerLife[1] += 1
        p2L.text = String(playerLife[1])
        gameOver()
    }
    
    @IBAction func p2MinusOne(_ sender: Any) {
        playerLife[1] -= 1
        p2L.text = String(playerLife[1])
        
        gameOver()
    }
    
    @IBAction func p3AddOne(_ sender:Any) {
        playerLife[2] += 1
        p3L.text = String(playerLife[2])
        
        gameOver()
    }
    
    @IBAction func p3MinusOne(_ sender:Any) {
        playerLife[2] -= 1
        p3L.text = String(playerLife[2])
        
        gameOver()
    }
    
    @IBAction func p4AddOne(_ sender:Any) {
        playerLife[3] += 1
        p4L.text = String(playerLife[3])
        
        gameOver()
    }
    
    @IBAction func p4MinusOne(_ sender:Any) {
        playerLife[3] -= 1
        p4L.text = String(playerLife[3])
        
        gameOver()
    }
    
    @IBAction func p5AddOne(_ sender:Any) {
        playerLife[4] += 1
        p5L.text = String(playerLife[4])
        
        gameOver()
    }
    
    @IBAction func p5MinusOne(_ sender:Any) {
        playerLife[4] -= 1
        p5L.text = String(playerLife[4])
        
        gameOver()
    }
    
    @IBAction func p6AddOne(_ sender:Any) {
        playerLife[5] += 1
        p6L.text = String(playerLife[5])
        
        gameOver()
    }
    
    @IBAction func p6MinusOne(_ sender:Any) {
        playerLife[5] -= 1
        p6L.text = String(playerLife[5])
        
        gameOver()
    }
    
    @IBAction func p7AddOne(_ sender:Any) {
        playerLife[6] += 1
        p7L.text = String(playerLife[6])
        
        gameOver()
    }
    
    @IBAction func p7MinusOne(_ sender:Any) {
        playerLife[6] -= 1
        p7L.text = String(playerLife[6])
        
        gameOver()
    }
    
    @IBAction func p8AddOne(_ sender:Any) {
        playerLife[7] += 1
        p8L.text = String(playerLife[7])
        
        gameOver()
    }
    
    @IBAction func p8MinusOne(_ sender:Any) {
        playerLife[7] -= 1
        p8L.text = String(playerLife[7])
        
        gameOver()
    }
    
    @IBAction func p1PlusVal(_ sender:Any) {
        playerLife[0] += Int(p1Field.text!)!
        p1L.text = String(playerLife[0])
        
        gameOver()
    }
    
    @IBAction func p1MinusVal(_ sender:Any) {
        playerLife[0] -= Int(p1Field.text!)!
        p1L.text = String(playerLife[0])
        gameOver()
    }
    
    @IBAction func p2PlusVal(_ sender:Any) {
        playerLife[1] += Int(p2Field.text!)!
        p2L.text = String(playerLife[1])
        gameOver()
    }
    
    @IBAction func p2MinusVal(_ sender:Any) {
        playerLife[1] -= Int(p2Field.text!)!
        p2L.text = String(playerLife[1])
        gameOver()
    }
    
    @IBAction func p3PlusVal(_ sender:Any) {
        playerLife[2] += Int(p3Field.text!)!
        p3L.text = String(playerLife[2])
        gameOver()
    }
    
    @IBAction func p3MinusVal(_ sender:Any) {
        playerLife[2] -= Int(p3Field.text!)!
        p3L.text = String(playerLife[2])
        gameOver()
    }
    
    @IBAction func p4PlusVal(_ sender:Any) {
        playerLife[3] += Int(p4Field.text!)!
        p4L.text = String(playerLife[3])
        gameOver()
    }
    
    @IBAction func p4MinusVal(_ sender:Any) {
        playerLife[3] -= Int(p4Field.text!)!
        p4L.text = String(playerLife[3])
        gameOver()
    }
    
    @IBAction func p5PlusVal(_ sender:Any) {
        playerLife[4] += Int(p5Field.text!)!
        p5L.text = String(playerLife[4])
        gameOver()
    }
    
    @IBAction func p5MinusVal(_ sender:Any) {
        playerLife[4] -= Int(p5Field.text!)!
        p5L.text = String(playerLife[4])
        gameOver()
    }
    
    @IBAction func p6PlusVal(_ sender:Any) {
        playerLife[5] += Int(p6Field.text!)!
        p6L.text = String(playerLife[5])
        gameOver()
    }
    
    @IBAction func p6MinusVal(_ sender:Any) {
        playerLife[5] -= Int(p6Field.text!)!
        p6L.text = String(playerLife[5])
        gameOver()
    }
    
    @IBAction func p7PlusVal(_ sender:Any) {
        playerLife[6] += Int(p7Field.text!)!
        p7L.text = String(playerLife[6])
        gameOver()
    }
    
    @IBAction func p7MinusVal(_ sender:Any) {
        playerLife[6] -= Int(p7Field.text!)!
        p7L.text = String(playerLife[6])
        gameOver()
    }
    
    @IBAction func p8PlusVal(_ sender:Any) {
        playerLife[7] += Int(p8Field.text!)!
        p8L.text = String(playerLife[7])
        gameOver()
    }
    
    @IBAction func p8MinusVal(_ sender:Any) {
        playerLife[7] -= Int(p8Field.text!)!
        p8L.text = String(playerLife[7])
        gameOver()
    }



}

