//
//  SetupViewController.swift
//  CarbonMockApp
//
//  Created by Geniusjames on 05/12/2021.
//

import Foundation
import UIKit

class AccountSetUp: UIViewController{
    
    
    var selectedCountryCode: String?
    var selectedGender: String?
    var countryCodesTextField: UITextField?
    let stringResources = StringsFile()
    var delegate: createViewDelegate?
    let grayColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
    let purpleColor = UIColor(red: 67/255, green: 1/255, blue: 192/255, alpha: 1)
    var datePicker = UIDatePicker()
    override func viewDidLoad() {
        self.navigationItem.title = "Create your Carbon account"
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(setUpHeader)
        view.addSubview(firstNameLabel)
        view.addSubview(firstNameInputField)
        view.addSubview(surnameLabel)
        view.addSubview(surnameInputField)
        view.addSubview(middleNameLabel)
        view.addSubview(middleNameInputField)
        view.addSubview(dateOfBirthLabel)
        view.addSubview(dateOfBirthInputField)
        view.addSubview(genderLabel)
        view.addSubview(genderPicker)
        view.addSubview(phoneNumberLabel)
        view.addSubview(phoneNumberInputField)
        view.addSubview(createAccountButton)
        view.addSubview(termsAndConditionsLabel)
        setUpViews()
        createPickerView()
        createDatePicker()
        dismissAndClose()
        
    }
    
    func createDatePicker(){
        datePicker.preferredDatePickerStyle = .wheels // makes the datepicker wheel up which solves the problem of the date picker not having appropriate height
        dateOfBirthInputField.textAlignment = .justified//aligns the text within the textField
        datePicker.datePickerMode = .date // to only get the date without time involved
        dateOfBirthInputField.inputView = datePicker // datePicker pops up but doesn't show in the whole screen
        dateOfBirthInputField.inputAccessoryView = createToolBar()
    }
    func createToolBar() -> UIToolbar {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(onClick))
        toolBar.setItems([doneBtn], animated: true)
        return toolBar
    }
    @objc func onClick(){
        let dateFormatter = DateFormatter() // formats the style of the datePicker
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        self.dateOfBirthInputField.text = dateFormatter.string(from: datePicker.date)
        self.view.endEditing(true) // makes the doneButton in the datePicker functional
    }
  
    lazy var setUpHeader: UILabel = {
        let label = UILabel()
        label.text = stringResources.setUpHeader
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
    lazy var dateOfBirthLabel: UILabel = {
        let label = UILabel()
        label.text = "Date of birth"
        return label
    }()
    lazy var dateOfBirthInputField: UITextField = {
        let textField = UITextField()
        let iv = UIView()
        let image = UIImage(systemName: "calendar")
        textField.backgroundColor = grayColor
        textField.layer.cornerRadius = 7
        textField.textAlignment = .left
        textField.rightView = iv.createSingleRightView(image: image!)
        textField.rightViewMode = .always
        return textField
    }()
    
    lazy var genderLabel: UILabel = {
        let label = UILabel()
        label.text = "Gender"
        return label
    }()
    lazy var genderPicker: UITextField = {
        let textField = UITextField()
        let image = UIImage(named: "arrow")
        let iv = UIView()
        
        textField.backgroundColor = grayColor
        textField.layer.cornerRadius = 7
        textField.textAlignment = .left
        textField.rightView = iv.createSingleRightView(image: image!)
        textField.rightViewMode = .always
        
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
    
    lazy var createAccountButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 7
        button.setTitle("Create Account", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.addTarget(self, action: #selector(beginTask), for: .touchUpInside)
//
        return button
    }()
    
    lazy var termsAndConditionsLabel: UILabel = {
        let label = UILabel()
        label.attributedText = stringResources.termsAndConditions
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    @objc func beginTask(){
        delegate?.begin(view: "profile")
        print("Started")
    }
}// end class

extension AccountSetUp: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if phoneNumberInputField.isFirstResponder{
            return stringResources.countryCodes.count
        }
        else if genderPicker.isFirstResponder{
            return stringResources.gender.count
        }
        return 0
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if phoneNumberInputField.isFirstResponder{
            return stringResources.countryNames[row]
        }
        else if genderPicker.isFirstResponder{
            return stringResources.gender[row]
        }
        return ""
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let iv=UIView()
        if phoneNumberInputField.isFirstResponder{
            self.selectedCountryCode = stringResources.countryCodes[row].uppercased()
            phoneNumberInputField.text = selectedCountryCode
            phoneNumberInputField.rightView = iv.createSingleRightView(image: UIImage(named: stringResources.countryNames[row])!)
            phoneNumberInputField.rightViewMode = .always
            
        }
        else if genderPicker.isFirstResponder{
            selectedGender = stringResources.gender[row]
            genderPicker.text = selectedGender
        }
    }
    func createPickerView(){
        let pickerView = UIPickerView()
        pickerView.delegate = self
        pickerView.dataSource = self
        
        phoneNumberInputField.inputView = pickerView
        genderPicker.inputView = pickerView

    }
    func dismissAndClose(){
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let button = UIBarButtonItem(title: "close", style: UIBarButtonItem.Style.done, target: self, action: #selector(self.dismissAction))
        toolbar.setItems([button], animated: true)
        toolbar.isUserInteractionEnabled = true
        self.phoneNumberInputField.inputAccessoryView = toolbar
        self.genderPicker.inputAccessoryView = toolbar
        self.view.endEditing(true)
        
    }
    @objc func dismissAction(){
        self.view.endEditing(true)
    }
  
    
}
extension UIView{
    
    func createSingleRightView(image: UIImage) -> UIView{
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.heightAnchor.constraint(equalToConstant: 20).isActive = true
        container.widthAnchor.constraint(equalToConstant: 40).isActive = true
        let imageView = UIImageView()
        imageView.image = image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.heightAnchor.constraint(equalToConstant: 20).isActive = true
//        imageView.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 20).isActive = true

        container.addSubview(imageView)
        imageView.leadingAnchor.constraint(equalTo: container.leadingAnchor).isActive = true
        return container
    }
    func createDoubleRightView(imageOne: UIImage, imageTwo: UIImage) -> UIView{
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.heightAnchor.constraint(equalToConstant: 20).isActive = true
        container.widthAnchor.constraint(equalToConstant: 20).isActive = true
        let imageViewOne = UIImageView()
        let imageViewTwo = UIImageView()
        imageViewOne.image = imageOne
        imageViewTwo.image = imageTwo
        container.addSubview(imageViewOne)
        container.addSubview(imageViewTwo)
        imageViewOne.translatesAutoresizingMaskIntoConstraints = false
        imageViewTwo.translatesAutoresizingMaskIntoConstraints = false
        imageViewOne.rightAnchor.constraint(equalTo: container.rightAnchor).isActive = true
        imageViewTwo.leftAnchor.constraint(equalTo: container.leftAnchor).isActive = true
        
        return container
        
    }
}

