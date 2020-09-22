//
//  ViewController.swift
//  PassDataBtw TwoViewControllers
//
//  Created by THANIKANTI VAMSI KRISHNA on 2/1/20.
//  Copyright © 2020 THANIKANTI VAMSI KRISHNA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstNameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var emailIDTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var registerBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerBtn.isHidden = true
    }
    
    @IBAction func toEnableRegisterBtn(_ sender: UITextField)
    {
        if firstNameTF.text != "" && lastNameTF.text != "" && emailIDTF.text != ""
        {
            registerBtn.isHidden = false
        }
        
    }
    
    @IBAction func doneRegister(_ sender: UIButton)
    {
        performSegue(withIdentifier: "register", sender: self)
        registerBtn.isHidden = true
        firstNameTF.text = ""
        lastNameTF.text = ""
        emailIDTF.text = ""
        passwordTF.text = ""
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var registerController = segue.destination as! registerDoneViewController
        registerController.firstName = firstNameTF.text!
        registerController.lastName = lastNameTF.text!
        registerController.emailID = emailIDTF.text!
        
    }
    


}

