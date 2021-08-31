//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Дмитрий Логачёв on 28.08.2021.
//

import UIKit

class LogInViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK: - Private properties
    private let user = User.getInfo()
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.layer.cornerRadius = 15
        passwordTextField.layer.cornerRadius = 15
    }
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let aboutMeVC = navigationVC.topViewController as! AboutMeViewController
                aboutMeVC.user = user
            }
        }
    }
    
    // MARK: - IB Actions
    @IBAction func forgotRegisteredData(_ sender: UIButton) {
        sender.tag == 0
            ? sendingAlertMessage(title: "Forgot user Name?", message: "User name: \(user.login) 😉")
            : sendingAlertMessage(title: "Forgot password?", message: "Password: \(user.password) 😉")
    }
    
    @IBAction func logInButtonPressed() {
        guard
            userNameTextField.text == user.login,
            passwordTextField.text == user.password
        else {
            sendingAlertMessage(
                title: "Alert!",
                message: "Wrong User Name or Password"
            )
            passwordTextField.text = ""
            return
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    // MARK: - Private Methods
        private func sendingAlertMessage(title: String, message: String) {
            let alertMessage = UIAlertController(
                title: title,
                message: message,
                preferredStyle: .alert
            )
            let okAction = UIAlertAction(title: "OK", style: .default)
            alertMessage.addAction(okAction)
            present(alertMessage, animated: true)
        }
}

extension LogInViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            logInButtonPressed()
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
        return true
    }
}
