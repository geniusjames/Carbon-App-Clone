//
//  LogInViewController.swift
//  CarbonMockApp
//
//  Created by Geniusjames on 01/12/2021.
//

import UIKit

class LogInViewController: UIViewController {
    
    let stringResources = StringsFile()
    let grayColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
    let purpleColor = UIColor(red: 67/255, green: 1/255, blue: 192/255, alpha: 1)
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(carbonImage)
        view.addSubview(signInHeader)
        view.addSubview(phoneNumberLabel)
        view.addSubview(phoneNumberInputField)
        view.addSubview(pinLabel)
        view.addSubview(pinInputField)
        setUpViews()
        // Do any additional setup after loading the view.
    
    }
    
    let carbonImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "carbon")
        
        return image
        
    }()
    lazy var signInHeader: UILabel = {
        let label = UILabel()
        label.text = stringResources.signInText
        return label
    }()

 
    
    lazy var phoneNumberInputField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = grayColor
        textField.layer.cornerRadius = 7
        textField.textAlignment = .left
        
        let iv = UIImageView()
        iv.image = UIImage(named: "nigeriaflag")
        iv.contentMode = .scaleAspectFit
        
        
        let container = UIView()
        container.addSubview(iv)
        container.translatesAutoresizingMaskIntoConstraints = false
        container.widthAnchor.constraint(equalToConstant: 60).isActive = true
        container.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.leadingAnchor.constraint(equalTo: container.leadingAnchor).isActive = true
        iv.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -20).isActive = true
        iv.topAnchor.constraint(equalTo: container.topAnchor).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 40).isActive = true
        iv.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        textField.rightView?.translatesAutoresizingMaskIntoConstraints = false
//        textField.rightView?.widthAnchor.constraint(equalToConstant: 40).isActive = false
        
        textField.rightView = container
    
//        textField.rightViewRect(forBounds: CGRect(x: -50, y: 0, width: 40, height: 40))
        
        textField.rightViewMode = .always
        
        return textField
    }()
    lazy var pinInputField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = grayColor
        textField.layer.cornerRadius = 7
        textField.textAlignment = .left
        
        let label = UILabel()
        label.text = "forgot password"
        label.textColor = purpleColor
        
        let container = UIView()
        container.addSubview(label)
        container.translatesAutoresizingMaskIntoConstraints = false
//        container.widthAnchor.constraint(equalToConstant: 60).isActive = true
        container.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.leadingAnchor.constraint(equalTo: container.leadingAnchor).isActive = true
        label.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -20).isActive = true
        textField.rightView = container
        textField.rightViewMode = .always
        
        
        return textField
    }()
    lazy var phoneNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "Phone Number"
        return label
    }()
    lazy var pinLabel: UILabel = {
        let label = UILabel()
        label.text = "PIN"
        return label
    }()
    
    func setUpViews(){
        let screenSize = UIScreen.main.bounds
        let height = screenSize.height
        let width = screenSize.width
        carbonImage.translatesAutoresizingMaskIntoConstraints = false
        carbonImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        carbonImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        carbonImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.3).isActive = true
        carbonImage.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        
        //SIGNIN HEADER
        signInHeader.translatesAutoresizingMaskIntoConstraints = false
        signInHeader.topAnchor.constraint(equalTo: carbonImage.bottomAnchor, constant: 20).isActive = true
        signInHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        //
        phoneNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        phoneNumberLabel.topAnchor.constraint(equalTo: signInHeader.bottomAnchor, constant: 50).isActive = true
        phoneNumberLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        phoneNumberInputField.translatesAutoresizingMaskIntoConstraints = false
        phoneNumberInputField.topAnchor.constraint(equalTo: phoneNumberLabel.bottomAnchor, constant: 5).isActive = true
        phoneNumberInputField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        phoneNumberInputField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        phoneNumberInputField.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true
        
        pinLabel.translatesAutoresizingMaskIntoConstraints = false
        pinLabel.topAnchor.constraint(equalTo: phoneNumberInputField.bottomAnchor, constant: 20).isActive = true
        pinLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        pinInputField.translatesAutoresizingMaskIntoConstraints = false
        pinInputField.topAnchor.constraint(equalTo: pinLabel.bottomAnchor, constant: 5).isActive = true
        pinInputField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        pinInputField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        pinInputField.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true

    }
}

protocol createViewDelegate{
    func begin(view: String)
}
