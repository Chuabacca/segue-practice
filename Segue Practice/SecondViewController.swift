//
//  SecondViewController.swift
//  Segue Practice
//
//  Created by Jonathan Chua on 10/16/17.
//  Copyright © 2017 Jonathan Chua. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var textPassed: String?

    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var secondTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        secondLabel.text = textPassed
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func backToFirstView(_ sender: Any) {
    }
    
}
