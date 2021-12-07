//
//  AccountSetupConstraints.swift
//  CarbonMockApp
//
//  Created by Geniusjames on 07/12/2021.
//

import Foundation
import UIKit
extension AccountSetUp{
    func setUpViews(){
        let screenSize = UIScreen.main.bounds
        let height = screenSize.height
        let width = screenSize.width
        let verticalDistance = height * 0.02
        
        //SIGNIN HEADER
        setUpHeader.translatesAutoresizingMaskIntoConstraints = false
        setUpHeader.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5).isActive = true
        setUpHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        //
        firstNameLabel.translatesAutoresizingMaskIntoConstraints = false
        firstNameLabel.topAnchor.constraint(equalTo: setUpHeader.bottomAnchor, constant: 50).isActive = true
        firstNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        firstNameInputField.translatesAutoresizingMaskIntoConstraints = false
        firstNameInputField.topAnchor.constraint(equalTo: firstNameLabel.bottomAnchor, constant: 5).isActive = true
        firstNameInputField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        firstNameInputField.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true
        firstNameInputField.widthAnchor.constraint(equalToConstant: (width * 0.5) - 30).isActive = true
        
        //--------
        middleNameLabel.translatesAutoresizingMaskIntoConstraints = false
        middleNameLabel.topAnchor.constraint(equalTo: setUpHeader.bottomAnchor, constant: 50).isActive = true
        middleNameLabel.leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: (-width/2) + 20).isActive = true
        
        //
        middleNameInputField.translatesAutoresizingMaskIntoConstraints = false
        middleNameInputField.topAnchor.constraint(equalTo: middleNameLabel.bottomAnchor, constant: 5).isActive = true
        middleNameInputField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        middleNameInputField.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true
        middleNameInputField.widthAnchor.constraint(equalToConstant: (width * 0.5) - 30).isActive = true
        
        surnameLabel.translatesAutoresizingMaskIntoConstraints = false
        surnameLabel.topAnchor.constraint(equalTo: firstNameInputField.bottomAnchor, constant: verticalDistance).isActive = true
        surnameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        surnameInputField.translatesAutoresizingMaskIntoConstraints = false
        surnameInputField.topAnchor.constraint(equalTo: surnameLabel.bottomAnchor, constant: 5).isActive = true
        surnameInputField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        surnameInputField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        surnameInputField.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true
        
        //-----
        
        dateOfBirthLabel.translatesAutoresizingMaskIntoConstraints = false
        dateOfBirthLabel.topAnchor.constraint(equalTo: surnameInputField.bottomAnchor, constant: verticalDistance).isActive = true
        dateOfBirthLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        dateOfBirthInputField.translatesAutoresizingMaskIntoConstraints = false
        dateOfBirthInputField.topAnchor.constraint(equalTo: dateOfBirthLabel.bottomAnchor, constant: 5).isActive = true
        dateOfBirthInputField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        dateOfBirthInputField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        dateOfBirthInputField.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true
        
        
        //
        genderLabel.translatesAutoresizingMaskIntoConstraints = false
        genderLabel.topAnchor.constraint(equalTo: dateOfBirthInputField.bottomAnchor, constant: verticalDistance).isActive = true
        genderLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        genderPicker.translatesAutoresizingMaskIntoConstraints = false
        genderPicker.topAnchor.constraint(equalTo: genderLabel.bottomAnchor, constant: 5).isActive = true
        genderPicker.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        genderPicker.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        genderPicker.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true
        
        //
        phoneNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        phoneNumberLabel.topAnchor.constraint(equalTo: genderPicker.bottomAnchor, constant: verticalDistance).isActive = true
        phoneNumberLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        phoneNumberInputField.translatesAutoresizingMaskIntoConstraints = false
        phoneNumberInputField.topAnchor.constraint(equalTo: phoneNumberLabel.bottomAnchor, constant: 5).isActive = true
        phoneNumberInputField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        phoneNumberInputField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        phoneNumberInputField.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true
        
        createAccountButton.translatesAutoresizingMaskIntoConstraints = false
        createAccountButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -verticalDistance).isActive = true
        createAccountButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        createAccountButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        createAccountButton.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true
        
        termsAndConditionsLabel.translatesAutoresizingMaskIntoConstraints = false
        termsAndConditionsLabel.bottomAnchor.constraint(equalTo: createAccountButton.topAnchor, constant:  -50).isActive = true
        termsAndConditionsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        termsAndConditionsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    } // end setUpViews
   
}
