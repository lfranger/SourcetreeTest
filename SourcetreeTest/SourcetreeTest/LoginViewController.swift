//
//  ViewController.swift
//  SourcetreeTest
//
//  Created by Consultant on 5/4/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    lazy var marvelLogoImageView: UIImageView = {
        let marvelLogoImageView = UIImageView()
        let logo = UIImage(named: "marvelLogo.png")
        marvelLogoImageView.image = logo
        marvelLogoImageView.translatesAutoresizingMaskIntoConstraints = false
        return marvelLogoImageView
    }()
    
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
        loginButton.layer.cornerRadius = 8.0
        loginButton.backgroundColor = .link
        return loginButton
    }()
    
    lazy var registerButton: UIButton = {
        let registerButton = UIButton()
        registerButton.addTarget(self, action: #selector(showRegisterView(_:)), for: .touchUpInside)
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        registerButton.setTitle("Register", for: .normal)
        registerButton.layer.cornerRadius = 8.0
        registerButton.backgroundColor = .green
        return registerButton
    }()
    
    //Stack View
    lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = NSLayoutConstraint.Axis.horizontal
        stackView.distribution = UIStackView.Distribution.fillEqually
        stackView.alignment = UIStackView.Alignment.center
        stackView.spacing = 5.0
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupStackView()
        setupSubViews()
        setupConstraints()
    }
    
    private func setupStackView() {
        stackView.addArrangedSubview(registerButton)
        stackView.addArrangedSubview(loginButton)
    }
    
    private func setupSubViews() {
        view.backgroundColor = .white
        view.addSubview(marvelLogoImageView)
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(stackView)
    }
    
    private func setupConstraints() {
        var constraints = [NSLayoutConstraint]()
        // Add constraints
        // MARK: marvelLogoImageView constraints
        constraints.append(marvelLogoImageView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor))
        constraints.append(marvelLogoImageView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: -60))
        constraints.append(marvelLogoImageView.widthAnchor.constraint(equalToConstant: 160))
        constraints.append(marvelLogoImageView.heightAnchor.constraint(equalToConstant: 120))
        // MARK: usernameTextField constraints
        constraints.append(usernameTextField.topAnchor.constraint(equalTo: marvelLogoImageView.bottomAnchor, constant: 5))
        constraints.append(usernameTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10))
        constraints.append(usernameTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10))
        // MARK: passwordTextField constrains
        constraints.append(passwordTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10))
        constraints.append(passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 5))
        constraints.append(passwordTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10))
        // MARK: stackView constraints
        constraints.append(stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10))
        constraints.append(stackView.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 5))
        constraints.append(stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10))

        //Activate constraints
        NSLayoutConstraint.activate(constraints)
        
    }
    
    // MARK: registerButton functionality. When tapped will show the Register View
    @objc
    func showRegisterView(_ sender: UIButton){
        let registerVC = RegisterViewController()
        navigationController?.pushViewController(registerVC, animated: true)
    }

}

