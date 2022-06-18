//
//  ViewController.swift
//  CafeClone
//
//  Created by Rahmetullah on 15.06.2022.
//

import UIKit

class ViewController: UIViewController {
    private let logo = UIImageView()
    private let signInlabel = UILabel()
    private let emailLabel = UILabel()
    private let passwordLabel = UILabel()
    private let emailText = UITextField()
    private let passwordText = UITextField()
    private let signInButton = UIButton()
    private let textFieldUIView = UIView()
    private let textFieldUIView1 = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configure()
       
    }
    
     
    func configure() {
        //MARK: LogoImageView
        logo.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(logo)
            logo.image = UIImage(named: "cafelogo")
            logo.layer.cornerRadius = 25
            NSLayoutConstraint.activate([
                
                logo.widthAnchor.constraint(equalToConstant: 90),
                logo.heightAnchor.constraint(equalToConstant: 180),
                logo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                logo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
                logo.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 120)
            ])
        //MARK: SignInLabel
        signInlabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(signInlabel)
        signInlabel.text = "Sign In"
        signInlabel.textColor = .black
        signInlabel.font = UIFont(name: "Arial Rounded MT Bold", size: 28)
        
        NSLayoutConstraint.activate([
            signInlabel.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: 20),
            signInlabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
 
            
    ])
        //MARK: EmailLabel
        view.addSubview(emailLabel)
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.text = "Email"
        emailLabel.textColor = .red
        emailLabel.font = UIFont(name: "Arial Rounded MT Bold", size: 20)
        
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 280),
            emailLabel.leadingAnchor.constraint(equalTo: signInlabel.leadingAnchor),
        
        ])
        //MARK: TextFieldUIView
        view.addSubview(textFieldUIView)
        textFieldUIView.translatesAutoresizingMaskIntoConstraints = false
        textFieldUIView.backgroundColor = .lightGray
        NSLayoutConstraint.activate([
            textFieldUIView.topAnchor.constraint(equalTo: signInlabel.bottomAnchor, constant: 80),
            textFieldUIView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            textFieldUIView.widthAnchor.constraint(equalToConstant: 350),
            textFieldUIView.heightAnchor.constraint(equalToConstant: 1)
            ])
        
        //MARK: EmailTextField
        view.addSubview(emailText)
        emailText.translatesAutoresizingMaskIntoConstraints = false
        emailText.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        emailText.textColor = .black
        emailText.backgroundColor = .white
        
            NSLayoutConstraint.activate([
            emailText.topAnchor.constraint(equalTo: signInlabel.bottomAnchor, constant: 50),
            emailText.leadingAnchor.constraint(equalTo: signInlabel.leadingAnchor),
            emailText.widthAnchor.constraint(equalToConstant: 350),
            emailText.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        //MARK: Password Label
        view.addSubview(passwordLabel)
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        passwordLabel.text = "Password"
        passwordLabel.font = UIFont(name: "Arial Rounded MT Bold", size: 20)
        passwordLabel.textColor = .red
        NSLayoutConstraint.activate([
            passwordLabel.topAnchor.constraint(equalTo: emailText.bottomAnchor, constant: 30),
            passwordLabel.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor)
    ])
        //MARK: PasswordTextField
        view.addSubview(passwordText)
        passwordText.translatesAutoresizingMaskIntoConstraints = false
        passwordText.attributedPlaceholder = NSAttributedString (string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        passwordText.textColor = .black
        passwordLabel.backgroundColor = .white
        
        NSLayoutConstraint.activate([
            passwordText.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 15),
            passwordText.leadingAnchor.constraint(equalTo: passwordLabel.leadingAnchor),
            passwordText.widthAnchor.constraint(equalToConstant: 350),
            passwordText.heightAnchor.constraint(equalToConstant: 30)
            ])

        //MARK: Password View
        view.addSubview(textFieldUIView1)
        textFieldUIView1.translatesAutoresizingMaskIntoConstraints = false
        textFieldUIView1.backgroundColor = .lightGray
        NSLayoutConstraint.activate([
            textFieldUIView1.topAnchor.constraint(equalTo: passwordText.bottomAnchor),
            textFieldUIView1.leadingAnchor.constraint(equalTo: passwordText.leadingAnchor),
            textFieldUIView1.widthAnchor.constraint(equalToConstant: 350),
            textFieldUIView1.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        //MARK: UIButton
        view.addSubview(signInButton)
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.setTitle("Log In", for: .normal)
        signInButton.titleLabel?.font = UIFont(name: "Arial Rounded MT Bold", size: 20)
        signInButton.backgroundColor = .red
        signInButton.layer.cornerRadius = 20
        signInButton.addTarget(self, action: #selector(logInButtonTapped), for: .touchUpInside)
        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalTo: textFieldUIView1.bottomAnchor, constant: 60),
            signInButton.leadingAnchor.constraint(equalTo: passwordLabel.leadingAnchor),
            signInButton.widthAnchor.constraint(equalToConstant: 350),
            signInButton.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        
    }
    
    @objc func logInButtonTapped() {
        navigationController?.pushViewController(ReservationView(), animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.hidesBarsOnTap = false
    }
    

}


