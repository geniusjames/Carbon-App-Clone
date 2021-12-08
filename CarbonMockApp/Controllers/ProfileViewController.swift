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
    let lightPurpleColor = UIColor(red: 209/255, green: 197/255, blue: 246/255, alpha: 1)
    let key = UserDefaults.standard.string(forKey: "new_user_key") ?? ""
    var customerProfile: [String : String] = [:]
    var delegate: createViewDelegate?
    override func viewDidLoad() {
        
        
        self.navigationItem.title = "Personal Details"
        let barItem = UIBarButtonItem(title: "Edit", style: .done, target: self, action: #selector(updateProfile))
        self.navigationItem.rightBarButtonItem = barItem
        view.backgroundColor = .white
        customerProfile = (UserDefaults.standard.dictionary(forKey: key) ?? [:]) as? [String : String] ?? ["name":"nil"]
        
        view.addSubview(purpleView)
        view.addSubview(scrollView)
        //        scrollView.addSubview(contentView)
        
        print(UserDefaults.standard.dictionary(forKey: key) ?? [:])
        setUpViews()
        setUpConstraints()
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        scrollView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height + 200)
    }
    lazy var purpleView: UIView = {
        let view = UIView()
        view.backgroundColor = lightPurpleColor
        return view
    }()
    lazy var setUpHeader: UILabel = {
        let label = UILabel()
        label.text = "Personal Details"
        return label
    }()
    
    lazy var scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.backgroundColor = .white
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
        let iv = UIView()
        let image = UIImage(systemName: "lock")
        textField.rightView = iv.createSingleRightView(image: image!)
        textField.rightViewMode = .always
        textField.backgroundColor = grayColor
        textField.layer.cornerRadius = 7
        textField.textAlignment = .left
        textField.text = customerProfile["first_name"]
        textField.isEnabled = false
        
        
        return textField
    }()
    lazy var middleNameInputField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = grayColor
        textField.layer.cornerRadius = 7
        textField.textAlignment = .left
        textField.text = customerProfile["middle_name"]
        textField.isEnabled = false
        return textField
    }()
    lazy var surnameInputField: UITextField = {
        let textField = UITextField()
        let iv = UIView()
        let image = UIImage(systemName: "lock")
        textField.rightView = iv.createSingleRightView(image: image!)
        textField.rightViewMode = .always
        textField.backgroundColor = grayColor
        textField.layer.cornerRadius = 7
        textField.textAlignment = .left
        textField.text = customerProfile["surname"]
        textField.isEnabled = false
        
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
        
        label.text = "Date of birth"
        return label
    }()
    lazy var dateOfBirthInputField: UITextField = {
        let textField = UITextField()
        let iv = UIView()
        let image = UIImage(systemName: "lock")
        textField.rightView = iv.createSingleRightView(image: image!)
        textField.rightViewMode = .always
        textField.backgroundColor = grayColor
        textField.layer.cornerRadius = 7
        textField.textAlignment = .left
        textField.text = customerProfile["date_of_birth"]
        textField.isEnabled = false
        
        return textField
    }()
    lazy var genderLabel: UILabel = {
        let label = UILabel()
        label.text = "Gender"
        return label
    }()
    lazy var genderInputField: UITextField = {
        let textField = UITextField()
        let iv = UIView()
        let image = UIImage(systemName: "lock")
        textField.rightView = iv.createSingleRightView(image: image!)
        textField.rightViewMode = .always
        textField.backgroundColor = grayColor
        textField.layer.cornerRadius = 7
        textField.textAlignment = .left
        textField.text = customerProfile["gender"]
        textField.isEnabled = false
        
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
        textField.text = customerProfile["phone_number"]
        textField.isEnabled = false
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
        firstNameInputField.isEnabled = true
        firstNameInputField.rightViewMode = .never
        surnameInputField.isEnabled = true
        surnameInputField.rightViewMode = .never
        genderInputField.isEnabled = true
        genderInputField.rightViewMode = .never
        dateOfBirthInputField.isEnabled = true
        dateOfBirthInputField.rightViewMode = .never
        
//                delegate?.begin(view: "register")
    }
    func setUpViews(){
        let screenSize = UIScreen.main.bounds
        let height = screenSize.height
        let width = screenSize.width
        
        
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
        
    }
   
}
