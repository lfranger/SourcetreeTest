//
//  RegisterViewController.swift
//  SourcetreeTest
//
//  Created by Consultant on 5/5/22.
//

import Foundation
import UIKit

class RegisterViewController: UIViewController {
    
    lazy var emailTextField: UITextField = {
        let emailTextField = UITextField()
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.placeholder = "Enter your email"
        emailTextField.borderStyle = .roundedRect
        emailTextField.backgroundColor = .white
        return emailTextField
    }()
    
    lazy var usernameTextField: UITextField = {
        let usernameTextField = UITextField()
        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        usernameTextField.placeholder = "Enter your username"
        usernameTextField.borderStyle = .roundedRect
        usernameTextField.backgroundColor = .white
        return usernameTextField
    }()
    
    lazy var passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.placeholder = "Enter your password"
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.backgroundColor = .white
        passwordTextField.isSecureTextEntry = true
        return passwordTextField
    }()
    
    lazy var confirmButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.baseBackgroundColor = UIColor.link
        let confirmButton = UIButton(configuration: configuration, primaryAction: nil)
        confirmButton.addTarget(self, action: #selector(confirmRegister(_:)), for: .touchUpInside)
        confirmButton.translatesAutoresizingMaskIntoConstraints = false
        confirmButton.setTitle("Confirm", for: .normal)
        return confirmButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupRegisterView()
        setupSubViews()
        setupConstraints()

    }
    
    // MARK: Setup for the Register View
    func setupRegisterView() {
        navigationItem.title = "Register"
        view.backgroundColor = .white
        let backButton = UIBarButtonItem()
        backButton.title = "Login"
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
    }
    
    // MARK: Function to setup the subviews for Register View
    func setupSubViews() {
        view.addSubview(emailTextField)
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(confirmButton)
    }
    
    
    func setupConstraints() {
        
        var constraints = [NSLayoutConstraint]()
        
        // Add constraints
        // MARK: emailTextField constraints
        constraints.append(emailTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10))
        constraints.append(emailTextField.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor))
        constraints.append(emailTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10))
        // MARK: usernameTextField constraints
        constraints.append(usernameTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10))
        constraints.append(usernameTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 5))
        constraints.append(usernameTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10))
        // MARK: passwordTextField constraints
        constraints.append(passwordTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10))
        constraints.append(passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 5))
        constraints.append(passwordTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant:  -10))
        // MARK: confirmButton constraints
        constraints.append(confirmButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 100))
        constraints.append(confirmButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 5))
        constraints.append(confirmButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant:  -100))

        // Activate constraints
        NSLayoutConstraint.activate(constraints)
        
    }
    
    @objc
    func confirmRegister(_ sender: Any) {
        print("Registration happens here")
    }
    
}
