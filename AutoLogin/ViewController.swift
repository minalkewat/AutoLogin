//
//  ViewController.swift
//  AutoLogin
//
//  Created by Meenal Kewat on 3/4/19.
//  Copyright © 2019 Meenal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var userTextfield: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var btn: UIButton!
    
    
    let emailID = "minalkewat@gmail.com"
    let password = "Minal@123"
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
    
    @IBAction func onClick(_ sender: Any) {
        if emailID == userTextfield.text! && password == passwordField.text!{
            UserDefaults.standard.set(userTextfield.text, forKey: "email")
            let vc = storyboard?.instantiateViewController(withIdentifier: "WelcomeViewController") as! WelcomeViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }else{
            let alert = UIAlertController.init(title: "Error", message: "Email or Password is missmatch", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
    }
    
    


}

