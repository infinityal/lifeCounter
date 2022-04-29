//
//  HistoryViewController.swift
//  lifeCounter
//
//  Created by 郑智健 on 4/29/22.
//

import Foundation
import UIKit

class HistoryViewController: UIViewController {
    public var history: [String] = ["123"]
    @IBOutlet weak var historyLabel: UILabel!
    @IBOutlet weak var returnBttn: UIButton!
    
    @IBAction func returnPage(_ sender:Any){
        dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(history.description)
        historyLabel?.text = history.description
    }
}
