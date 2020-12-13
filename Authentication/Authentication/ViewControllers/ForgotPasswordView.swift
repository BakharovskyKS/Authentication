//
//  ForgotPasswordView.swift
//  Authentication
//
//  Created by Кирилл Бахаровский on 12/13/20.
//

import UIKit

class ForgotPasswordView : UIViewController {
    
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var showPass: UIBarButtonItem!
    
    @IBAction func checkUsername(_ sender: Any) {
        usernameTF.text == username ? (showPass.isEnabled = true) : (showPass.isEnabled = false)
        
    }
    func showAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Done", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func showPassAlert(_ sender: Any) {
        showAlert(title: "Oops!", message: "Your password is '\(password)'")
    }
    @IBAction func showUsernameAlert(_ sender: Any) {
        showAlert(title: "Oops!", message: "Your username is '\(username)'")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
}


