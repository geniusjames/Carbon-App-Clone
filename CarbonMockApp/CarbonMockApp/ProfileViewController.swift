//
//  ProfileViewController.swift
//  CarbonMockApp
//
//  Created by Geniusjames on 05/12/2021.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController, UIScrollViewDelegate{
    
    let grayColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
    let purpleColor = UIColor(red: 67/255, green: 1/255, blue: 192/255, alpha: 1)
    
    override func viewDidLoad() {
        
        self.navigationItem.title = "Personal Details"
        view.addSubview(purpleView)
        view.addSubview(scrollView)
//        scrollView.addSubview(contentView)

        
        setUpViews()
        setUpConstraints()
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        scrollView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height + 200)
    }
    lazy var purpleView: UIView = {
        let view = UIView()
        view.backgroundColor = .purple
        return view
    }()
    lazy var setUpHeader: UILabel = {
        let label = UILabel()
        label.text = "Personal Details"
        return label
    }()
    
    lazy var scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height)
        
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.bounces = true
        return sv
    }()
//    lazy var scrollView: UIView = {
//        let view = UIView()
//        view.backgroundColor = .brown
//
//        return view
//    }()
    lazy var firstNameLabel: UILabel = {
        let label = UILabel()
        label.text = "First Name"
        return label
    }()
    lazy var middleNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Middle Name"
        return label
    }()
    lazy var surnameLabel: UILabel = {
        let label = UILabel()
        label.text = "Surname"
        return label
    }()
    lazy var firstNameInputField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = grayColor
        textField.layer.cornerRadius = 7
        textField.textAlignment = .left
        
        return textField
    }()
    lazy var middleNameInputField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = grayColor
        textField.layer.cornerRadius = 7
        textField.textAlignment = .left
        
        return textField
    }()
    lazy var surnameInputField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = grayColor
        textField.layer.cornerRadius = 7
        textField.textAlignment = .left
        
        return textField
    }()
    
    lazy var emailAddressLabel: UILabel = {
        let label = UILabel()
        label.text = "Email address"
        return label
    }()
    lazy var emailAddressInputField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = grayColor
        textField.layer.cornerRadius = 7
        textField.textAlignment = .left
        
        return textField
    }()
    
    lazy var dateOfBirthLabel: UILabel = {
        let label = UILabel()
        label.text = "Email address"
        return label
    }()
    lazy var dateOfBirthInputField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = grayColor
        textField.layer.cornerRadius = 7
        textField.textAlignment = .left
        
        return textField
    }()
    lazy var genderLabel: UILabel = {
        let label = UILabel()
        label.text = "Gender"
        return label
    }()
    lazy var genderInputField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = grayColor
        textField.layer.cornerRadius = 7
        textField.textAlignment = .left
        
        return textField
    }()
    lazy var phoneNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "Phone Number"
        return label
    }()
    lazy var phoneNumberInputField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = grayColor
        textField.layer.cornerRadius = 7
        textField.textAlignment = .left
        
        return textField
    }()
    
    lazy var maritalSatusLabel: UILabel = {
        let label = UILabel()
        label.text = "Whats your Marital Status"
        return label
    }()
    lazy var maritalStatusInputField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = grayColor
        textField.layer.cornerRadius = 7
        textField.textAlignment = .left
        
        return textField
    }()
    
    lazy var noOfChildrenLabel: UILabel = {
        let label = UILabel()
        label.text = "How many children do you have?"
        return label
    }()
    lazy var noOfChildrenInputField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = grayColor
        textField.layer.cornerRadius = 7
        textField.textAlignment = .left
        
        return textField
    }()
    lazy var updateProfileButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 7
        button.setTitle("Next", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = purpleColor
        button.addTarget(self, action: #selector(updateProfile), for: .touchUpInside)
//
        return button
    }()
    @objc func updateProfile(){
        
    }
    func setUpViews(){
        let screenSize = UIScreen.main.bounds
        let height = screenSize.height
        let width = screenSize.width
        let verticalDistance = height * 0.02
        

        purpleView.translatesAutoresizingMaskIntoConstraints = false
        purpleView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5).isActive = true
        purpleView.widthAnchor.constraint(equalToConstant: width - 10).isActive = true
        purpleView.heightAnchor.constraint(equalToConstant: height * 0.1).isActive = true
        purpleView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.topAnchor.constraint(equalTo: purpleView.bottomAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
   

//        contentView.translatesAutoresizingMaskIntoConstraints = false
//        contentView.backgroundColor = .yellow
//        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
//        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
//        contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
//        contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
       scrollView.addSubview(firstNameLabel)
       scrollView.addSubview(firstNameInputField)
       scrollView.addSubview(middleNameLabel)
       scrollView.addSubview(middleNameInputField)
       scrollView.addSubview(surnameLabel)
       scrollView.addSubview(surnameInputField)
       scrollView.addSubview(emailAddressLabel)
       scrollView.addSubview(emailAddressInputField)
       scrollView.addSubview(dateOfBirthLabel)
       scrollView.addSubview(dateOfBirthInputField)
       scrollView.addSubview(genderLabel)
       scrollView.addSubview(genderInputField)
       scrollView.addSubview(phoneNumberLabel)
       scrollView.addSubview(phoneNumberInputField)
       scrollView.addSubview(maritalSatusLabel)
       scrollView.addSubview(maritalStatusInputField)
       scrollView.addSubview(noOfChildrenLabel)
       scrollView.addSubview(noOfChildrenInputField)
        scrollView.addSubview(updateProfileButton)
//        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
//        contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor).isActive = true
//
        
    }
    func setUpConstraints(){
        let screenSize = UIScreen.main.bounds
        let height = screenSize.height
        let width = screenSize.width
        
        firstNameLabel.translatesAutoresizingMaskIntoConstraints = false
        firstNameLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 20).isActive = true
        firstNameLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
        firstNameLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor,constant: -10).isActive = true
        
        firstNameInputField.translatesAutoresizingMaskIntoConstraints = false
        firstNameInputField.topAnchor.constraint(equalTo: firstNameLabel.bottomAnchor, constant: 10).isActive = true
        firstNameInputField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
        firstNameInputField.widthAnchor.constraint(equalToConstant: width - 20).isActive = true
        firstNameInputField.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true
        
        
        middleNameLabel.translatesAutoresizingMaskIntoConstraints = false
        middleNameLabel.topAnchor.constraint(equalTo: firstNameInputField.bottomAnchor, constant: 20).isActive = true
        middleNameLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
        middleNameLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor,constant: -10).isActive = true
        
       middleNameInputField.translatesAutoresizingMaskIntoConstraints = false
       middleNameInputField.topAnchor.constraint(equalTo: middleNameLabel.bottomAnchor, constant: 10).isActive = true
       middleNameInputField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
       middleNameInputField.widthAnchor.constraint(equalToConstant: width - 20).isActive = true
       middleNameInputField.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true

        
       surnameLabel.translatesAutoresizingMaskIntoConstraints = false
       surnameLabel.topAnchor.constraint(equalTo: middleNameInputField.bottomAnchor, constant: 20).isActive = true
       surnameLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
       surnameLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -10).isActive = true
        
       surnameInputField.translatesAutoresizingMaskIntoConstraints = false
       surnameInputField.topAnchor.constraint(equalTo: surnameLabel.bottomAnchor, constant: 10).isActive = true
       surnameInputField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
       surnameInputField.widthAnchor.constraint(equalToConstant: width - 20).isActive = true
       surnameInputField.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true
        
        
       emailAddressLabel.translatesAutoresizingMaskIntoConstraints = false
       emailAddressLabel.topAnchor.constraint(equalTo: surnameInputField.bottomAnchor, constant: 20).isActive = true
       emailAddressLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
       emailAddressLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -10).isActive = true

       emailAddressInputField.translatesAutoresizingMaskIntoConstraints = false
       emailAddressInputField.topAnchor.constraint(equalTo: emailAddressLabel.bottomAnchor, constant: 10).isActive = true
       emailAddressInputField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
       emailAddressInputField.widthAnchor.constraint(equalToConstant: width - 20).isActive = true
       emailAddressInputField.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true
        
        
      dateOfBirthLabel.translatesAutoresizingMaskIntoConstraints = false
      dateOfBirthLabel.topAnchor.constraint(equalTo: emailAddressInputField.bottomAnchor, constant: 20).isActive = true
      dateOfBirthLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
      dateOfBirthLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -10).isActive = true

      dateOfBirthInputField.translatesAutoresizingMaskIntoConstraints = false
      dateOfBirthInputField.topAnchor.constraint(equalTo: dateOfBirthLabel.bottomAnchor, constant: 10).isActive = true
      dateOfBirthInputField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
      dateOfBirthInputField.widthAnchor.constraint(equalToConstant: width - 20).isActive = true
      dateOfBirthInputField.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true

    
       genderLabel.translatesAutoresizingMaskIntoConstraints = false
       genderLabel.topAnchor.constraint(equalTo: dateOfBirthInputField.bottomAnchor, constant: 20).isActive = true
       genderLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
       genderLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -10).isActive = true

       genderInputField.translatesAutoresizingMaskIntoConstraints = false
       genderInputField.topAnchor.constraint(equalTo: genderLabel.bottomAnchor, constant: 10).isActive = true
       genderInputField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
       genderInputField.widthAnchor.constraint(equalToConstant: width - 20).isActive = true
       genderInputField.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true

        
           phoneNumberLabel.translatesAutoresizingMaskIntoConstraints = false
           phoneNumberLabel.topAnchor.constraint(equalTo: genderInputField.bottomAnchor, constant: 20).isActive = true
           phoneNumberLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
           phoneNumberLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -10).isActive = true

          phoneNumberInputField.translatesAutoresizingMaskIntoConstraints = false
          phoneNumberInputField.topAnchor.constraint(equalTo: phoneNumberLabel.bottomAnchor, constant: 10).isActive = true
          phoneNumberInputField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
          phoneNumberInputField.widthAnchor.constraint(equalToConstant: width - 20).isActive = true
          phoneNumberInputField.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true

        
          maritalSatusLabel.translatesAutoresizingMaskIntoConstraints = false
          maritalSatusLabel.topAnchor.constraint(equalTo: phoneNumberInputField.bottomAnchor, constant: 20).isActive = true
          maritalSatusLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
          maritalSatusLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -10).isActive = true

         maritalStatusInputField.translatesAutoresizingMaskIntoConstraints = false
         maritalStatusInputField.topAnchor.constraint(equalTo: maritalSatusLabel.bottomAnchor, constant: 10).isActive = true
         maritalStatusInputField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
         maritalStatusInputField.widthAnchor.constraint(equalToConstant: width - 20).isActive = true
         maritalStatusInputField.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true

        
         noOfChildrenLabel.translatesAutoresizingMaskIntoConstraints = false
         noOfChildrenLabel.topAnchor.constraint(equalTo: maritalStatusInputField.bottomAnchor, constant: 20).isActive = true
         noOfChildrenLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
         noOfChildrenLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -10).isActive = true

        noOfChildrenInputField.translatesAutoresizingMaskIntoConstraints = false
        noOfChildrenInputField.topAnchor.constraint(equalTo: noOfChildrenLabel.bottomAnchor, constant: 10).isActive = true
        noOfChildrenInputField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
        noOfChildrenInputField.widthAnchor.constraint(equalToConstant: width - 20).isActive = true
        noOfChildrenInputField.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true

        
        updateProfileButton.translatesAutoresizingMaskIntoConstraints = false
        updateProfileButton.topAnchor.constraint(equalTo: noOfChildrenInputField.bottomAnchor, constant: 10).isActive = true
        updateProfileButton.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
        updateProfileButton.widthAnchor.constraint(equalToConstant: width - 20).isActive = true
        updateProfileButton.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true

        
        
    }
}
