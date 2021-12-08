//
//  AccountSetupConstraints.swift
//  CarbonMockApp
//
//  Created by Geniusjames on 07/12/2021.
//

import Foundation
import UIKit
extension AccountSetUpViewController{
    func setUpViews(){
        let screenSize = UIScreen.main.bounds
        let height = screenSize.height
        let width = screenSize.width
        let verticalDistance = height * 0.02
        
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        //SIGNIN HEADER
        setUpHeader.translatesAutoresizingMaskIntoConstraints = false
        setUpHeader.numberOfLines = 0
        setUpHeader.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 5).isActive = true
        setUpHeader.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
        setUpHeader.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -10).isActive = true
        setUpHeader.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        
        //
        firstNameLabel.translatesAutoresizingMaskIntoConstraints = false
        firstNameLabel.topAnchor.constraint(equalTo: setUpHeader.bottomAnchor, constant: 50).isActive = true
        firstNameLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20).isActive = true
        
        firstNameInputField.translatesAutoresizingMaskIntoConstraints = false
        firstNameInputField.topAnchor.constraint(equalTo: firstNameLabel.bottomAnchor, constant: 5).isActive = true
        firstNameInputField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
        firstNameInputField.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true
        firstNameInputField.widthAnchor.constraint(equalToConstant: (width * 0.5) - 20).isActive = true
        
        //--------
        middleNameLabel.translatesAutoresizingMaskIntoConstraints = false
        middleNameLabel.topAnchor.constraint(equalTo: setUpHeader.bottomAnchor, constant: 50).isActive = true
        middleNameLabel.leadingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: (-width/2) + 20).isActive = true
        
        //
        middleNameInputField.translatesAutoresizingMaskIntoConstraints = false
        middleNameInputField.topAnchor.constraint(equalTo: middleNameLabel.bottomAnchor, constant: 5).isActive = true
        middleNameInputField.leadingAnchor.constraint(equalTo: firstNameInputField.trailingAnchor, constant: 20).isActive=true
        middleNameInputField.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -10).isActive = true
        middleNameInputField.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true
        middleNameInputField.widthAnchor.constraint(equalToConstant: (width * 0.5) - 20).isActive = true
        
        surnameLabel.translatesAutoresizingMaskIntoConstraints = false
        surnameLabel.topAnchor.constraint(equalTo: firstNameInputField.bottomAnchor, constant: verticalDistance).isActive = true
        surnameLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20).isActive = true
        
        surnameInputField.translatesAutoresizingMaskIntoConstraints = false
        surnameInputField.topAnchor.constraint(equalTo: surnameLabel.bottomAnchor, constant: 5).isActive = true
        surnameInputField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
        surnameInputField.widthAnchor.constraint(equalToConstant: width - 20).isActive = true
        surnameInputField.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true
        
        //-----
        
        dateOfBirthLabel.translatesAutoresizingMaskIntoConstraints = false
        dateOfBirthLabel.topAnchor.constraint(equalTo: surnameInputField.bottomAnchor, constant: verticalDistance).isActive = true
        dateOfBirthLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
        
        dateOfBirthInputField.translatesAutoresizingMaskIntoConstraints = false
        dateOfBirthInputField.topAnchor.constraint(equalTo: dateOfBirthLabel.bottomAnchor, constant: 5).isActive = true
        dateOfBirthInputField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
        dateOfBirthInputField.widthAnchor.constraint(equalToConstant: width - 20).isActive = true
        dateOfBirthInputField.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true
        
        
        //
        genderLabel.translatesAutoresizingMaskIntoConstraints = false
        genderLabel.topAnchor.constraint(equalTo: dateOfBirthInputField.bottomAnchor, constant: verticalDistance).isActive = true
        genderLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
        
        genderPicker.translatesAutoresizingMaskIntoConstraints = false
        genderPicker.topAnchor.constraint(equalTo: genderLabel.bottomAnchor, constant: 5).isActive = true
        genderPicker.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
        genderPicker.widthAnchor.constraint(equalToConstant: width - 20).isActive = true
        genderPicker.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true
        
        //
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.topAnchor.constraint(equalTo: genderPicker.bottomAnchor, constant: verticalDistance).isActive = true
        emailLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
        
        emailInputField.translatesAutoresizingMaskIntoConstraints = false
        emailInputField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 5).isActive = true
        emailInputField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
        emailInputField.widthAnchor.constraint(equalToConstant: width - 20).isActive = true
        emailInputField.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true
        
        
        phoneNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        phoneNumberLabel.topAnchor.constraint(equalTo: emailInputField.bottomAnchor, constant: verticalDistance).isActive = true
        phoneNumberLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
        
        phoneNumberInputField.translatesAutoresizingMaskIntoConstraints = false
        phoneNumberInputField.topAnchor.constraint(equalTo: phoneNumberLabel.bottomAnchor, constant: 5).isActive = true
        phoneNumberInputField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
        phoneNumberInputField.widthAnchor.constraint(equalToConstant: width - 20).isActive = true
        phoneNumberInputField.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true
        
        pinLabel.translatesAutoresizingMaskIntoConstraints = false
        pinLabel.topAnchor.constraint(equalTo: phoneNumberInputField.bottomAnchor, constant: verticalDistance).isActive = true
        pinLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
       
        pinInputField.translatesAutoresizingMaskIntoConstraints = false
        pinInputField.topAnchor.constraint(equalTo: pinLabel.bottomAnchor, constant: 5).isActive = true
        pinInputField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
        pinInputField.widthAnchor.constraint(equalToConstant: width - 20).isActive = true
        pinInputField.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true
        
        
        createAccountButton.translatesAutoresizingMaskIntoConstraints = false
        createAccountButton.topAnchor.constraint(equalTo: termsAndConditionsLabel.bottomAnchor, constant:  20).isActive = true
        createAccountButton.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20).isActive = true
        createAccountButton.widthAnchor.constraint(equalToConstant: width - 40).isActive = true

        createAccountButton.heightAnchor.constraint(equalToConstant: height * 0.07).isActive = true
        
        termsAndConditionsLabel.translatesAutoresizingMaskIntoConstraints = false
        termsAndConditionsLabel.topAnchor.constraint(equalTo: pinInputField.bottomAnchor, constant:  15).isActive = true
        termsAndConditionsLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20).isActive = true
        termsAndConditionsLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20).isActive = true
        
        validationLabel.translatesAutoresizingMaskIntoConstraints = false
        validationLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200).isActive = true
        validationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
   
    } // end setUpViews
   
}
