//
//  ViewController.swift
//  LoginScreen
//
//  Created by Aloc SP11602 on 14/03/22.
//

import UIKit

class ViewController: UIViewController {

    //MARK: IBOutlets
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: IBAction
    @IBAction func loginOnClick(_ sender: UIButton) {
        if let email = emailTextField.text,
           let password = passwordTextField.text,
           isValidEmail(email: email),
           isValidPassword(password: password)
            {
            validateAuthentication(email, password)
        }
        else {
            showTextFormatErrorAlert()
            passwordTextField.text?.removeAll()
        }
    }
    
    //MARK: Public Methods
    func validateAuthentication(_ email: String, _ password: String) {
        if email == "test@mail.com" && password == "Password123" {
            showSuccessAlert()
        }
        else {
            showAuthenticationErrorAlert()
            passwordTextField.text?.removeAll()
        }
    }
    
    //MARK: Private Methods
    private func isValidEmail(email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
}
    private func isValidPassword(password: String) -> Bool {
        if password != "", password.count > 7 {
            return true
        }
        return false
    }
    
    private func showSuccessAlert() {
        let title = "Sucesso!"
        let message = "Autenticação concluída com sucesso."
        let alertOfSuccess = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alertOfSuccess.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        present(alertOfSuccess, animated: true, completion: nil)
    }
    
    private func showAuthenticationErrorAlert() {
        let title = "Erro"
        let message = "Autenticação falhou. E-mail e/ou senha incorreto(s)."
        
        let alertOfSuccess = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alertOfSuccess.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        present(alertOfSuccess, animated: true, completion: nil)
    }
    
    private func showTextFormatErrorAlert() {
        let title = "Erro"
        let message = "Insira e-mail e senha válidos."
        let alertOfSuccess = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alertOfSuccess.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        present(alertOfSuccess, animated: true, completion: nil)
    }
}
