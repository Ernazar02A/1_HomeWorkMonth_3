//
//  ViewController.swift
//  1_HomeWorkMonth_3
//
//  Created by MacBook Pro on 8/4/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    
    @IBOutlet weak var whiteLoginBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        whiteLoginBtn.layer.borderWidth = 1
        whiteLoginBtn.layer.borderColor = #colorLiteral(red: 0, green: 0.5616301298, blue: 0.9941059947, alpha: 1)
        loginTextField.layer.cornerRadius = 6
        passTextField.layer.cornerRadius = 6
        passTextField.layer.borderWidth = 1
        loginTextField.layer.borderWidth = 1
        loginTextField.layer.borderColor = #colorLiteral(red: 0, green: 0.4470588235, blue: 0.8823529412, alpha: 0.04303413037)
        passTextField.layer.borderColor = #colorLiteral(red: 0, green: 0.4470588235, blue: 0.8823529412, alpha: 0.04303413037)
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        let login = loginTextField!
        let pass = passTextField!
        
        checkForEmptiness(textField: login)
        checkForEmptiness(textField: pass)
    }


    func checkForEmptiness(textField: UITextField) {
        if textField.text?.isEmpty == true {
            textField.layer.borderColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
            textField.placeholder = "This field must not be empty!"
        } else {
            textField.layer.borderColor = #colorLiteral(red: 0, green: 0.4470588235, blue: 0.8823529412, alpha: 0.04303413037)
            textField.placeholder = "name"
        }
    }
}

