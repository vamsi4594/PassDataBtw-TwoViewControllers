//
//  registerDoneViewController.swift
//  PassDataBtw TwoViewControllers
//
//  Created by THANIKANTI VAMSI KRISHNA on 2/1/20.
//  Copyright © 2020 THANIKANTI VAMSI KRISHNA. All rights reserved.
//

import UIKit

class registerDoneViewController: UIViewController {

    
    @IBOutlet weak var outputText: UITextView!
    
    var firstName = String()
    var lastName = String()
    var emailID = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        outputText.text = "FirstName: \(firstName)\nLastName: \(lastName)\nEmail ID: \(emailID)\n----------------------\n"
    }

}
