//
//  ViewController.swift
//  Segue Practice
//
//  Created by Jonathan Chua on 10/16/17.
//  Copyright © 2017 Jonathan Chua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goToNextView(_ sender: Any) {
        performSegue(withIdentifier: "segueForward", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueForward" {
            let secondView = segue.destination as! SecondViewController
            secondView.textPassed = firstTextField.text
        }
    }

}

