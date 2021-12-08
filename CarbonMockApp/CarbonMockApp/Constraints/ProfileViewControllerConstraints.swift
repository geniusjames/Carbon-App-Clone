//
//  SetUpViewControllerConstrains.swift
//  CarbonMockApp
//
//  Created by Geniusjames on 08/12/2021.
//

import Foundation
import UIKit
extension ProfileViewController{
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

