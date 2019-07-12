//
//  ViewController.swift
//  emojinal
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let emojis = ["🍩" : "donut", "🥦" : "broccoli"]
    
    let customMessages = ["donut": ["Donut... very unhealthy you are." , "DONUT YUMMMMM YUM YUM!", "*Beware... in the next 24 hours, you may have a donut thrown at you.*", "You should eat some broccoli some time."],
        "broccoli": ["Broccoli. Good choice, you will live long.", "Broccoli... are you sure you chose correctly? JK broccoli is always the right choice.", "You deserve a donut.", "Yas broccoli!"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
  
        
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[Int.random(in: 0...3)]
        
        let alertController = UIAlertController(title: "Food Choice", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Sure", style: UIAlertAction.Style.default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
        
        
    }
}

