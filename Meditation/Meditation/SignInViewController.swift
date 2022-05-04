//
//  ViewController.swift
//  Meditation
//
//  Created by Student on 04.05.2022.
//

import UIKit
import Alamofire
import SwiftyJSON
class SignInViewController: UIViewController {

    
    @IBOutlet weak var inputLogin: UITextField!
    @IBOutlet weak var inputPassword: UITextField!
    
    @IBAction func signInAction(_ sender: UIButton) {
    
        guard inputPassword.text?.isEmpty == false && inputPassword.text?.isEmpty == false else { return showAlert(message: "Поля пустые")}
        
        func showAlert(message: String) {
            let alert = UIAlertController(title: "Уведомление", message: message, preferredStyle: .alert)
            alert.addAction(action: UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(alert, animated: true, comletion: nil)
        }
        
        func isVakidEmail(emailID: String) -> Bool {
            let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
            let emailText = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            return emailText.evaluate(with: emailID)
        }
    }

}
