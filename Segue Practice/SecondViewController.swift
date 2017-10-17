//
//  SecondViewController.swift
//  Segue Practice
//
//  Created by Jonathan Chua on 10/16/17.
//  Copyright © 2017 Jonathan Chua. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate {
    func opperateOnData(data: String)
}

class SecondViewController: UIViewController {

    var textPassed: String?
    var delegate: SecondViewControllerDelegate?

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
        let textEntered = secondTextField.text!
        delegate?.opperateOnData(data: textEntered)
        self.dismiss(animated: true, completion: nil)
    }
    
}
