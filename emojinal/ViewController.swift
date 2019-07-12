//
//  ViewController.swift
//  emojinal
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var broccoli: UIButton!
    
    @IBOutlet weak var donut: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        
        let alertController = UIAlertController(title: "Broccoli", message: "Good Choice. You will live long.", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Um thx?", style: UIAlertAction.Style.default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
        
        
    }

}

