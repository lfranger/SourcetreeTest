//
//  ViewController.swift
//  SourcetreeTest
//
//  Created by Consultant on 5/4/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    lazy var usernameTextField: UITextField = {
        let usernameTextField = UITextField()
        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        usernameTextField.placeholder = "Username"
        usernameTextField.borderStyle = .roundedRect
        usernameTextField.backgroundColor = .white
        return usernameTextField
    }()
    
    lazy var passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.placeholder = "Password"
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.backgroundColor = .white
        passwordTextField.isSecureTextEntry = true
        return passwordTextField
    }()
    
    lazy var loginButton: UIButton = {
        let loginButton = UIButton()
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.setTitle("Login", for: .normal)
        loginButton.backgroundColor = .link
        return loginButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        setupSubViews()
        setupConstraints()
    }
    
    private func setupSubViews() {
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
    }
    
    private func setupConstraints() {
        var constraints = [NSLayoutConstraint]()
        // Add
        // MARK: usernameTextField constraints
        constraints.append(usernameTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10))
        constraints.append(usernameTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10))
        constraints.append(usernameTextField.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor))
        // MARK: passwordTextField constrains
        constraints.append(passwordTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10))
        constraints.append(passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 5))
        constraints.append(passwordTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10))
        // MARK: loginButton constraints
        constraints.append(loginButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50))
        constraints.append(loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 5))
        constraints.append(loginButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50))
        
        //Activate
        NSLayoutConstraint.activate(constraints)
        
    }

}

