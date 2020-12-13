//
//  ViewController.swift
//  Authentication
//
//  Created by Кирилл Бахаровский on 12/12/20.
//

let username = "Admin"
let password = "hello"

import UIKit

class ViewController: UIViewController {
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var forgotPassword: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidLayoutSubviews() {
        forgotPassword.layer.cornerRadius = 10
        loginButton.layer.cornerRadius = 5
    }
    
    
    @IBAction func loginEdit(_ sender: Any) {
        if (loginTF.text!.isEmpty || passwordTF.text!.isEmpty) {
            loginButton.isEnabled = false
        } else {
            loginButton.isEnabled = true
            
        }
    }
    
    func verification(){
        if (loginTF.text == username && passwordTF.text == password) {
            forgotPassword.isHidden = true
        } else {
            forgotPassword.isHidden = false
        }
    }
    
    @IBAction func logintButtonAction(_ sender: Any) {
        verification()
//        guard !verification() else { return }
//        performSegue(withIdentifier: "ProfileView", sender: nil)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//      guard let dvc = segue.destination as? ProfileView else { return }
//    }
}





