//
//  OnBoardingVierController.swift
//  CarbonMockApp
//
//  Created by Geniusjames on 28/11/2021.


import UIKit

class OnBoardingViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var strings = StringsFile()
    var delegate: createViewDelegate?
    var navigationTitle: String = "next"
    
    override func viewDidLoad() {
        self.navigationItem.title = ""
        self.navigationController?.navigationBar.tintColor = .purple
        self.navigationController?.navigationBar.backgroundColor = .gray
    
        view.addSubview(onBoardingCollectionView)
        view.addSubview(accountSetupButton)
        onBoardingCollectionView.dataSource = self
        onBoardingCollectionView.delegate = self
        setUpCollectionView()
        
        onBoardingCollectionView.register(OnboardingCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        super.viewDidLoad()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 3
    }
    
    let cellId = "cellId"
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as? OnboardingCollectionViewCell else {
            return UICollectionViewCell()
        }
//        print(indexPath.row)
        DispatchQueue.main.async {
         
        }
       
        cell.firstOnboardingImage.image = UIImage(named: strings.imageName[indexPath.row])
        cell.headerLabel.text = strings.headers[indexPath.row]
        cell.detailLabel.text = strings.details[indexPath.row]
//        if indexPath.row == 2{
//            delegate?.begin()
//        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
           if indexPath.row == 0 || indexPath.row == 1{
               
                   self.navigationTitle = "Skip"
                   self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: self.navigationTitle, style: .plain, target: self, action: #selector(self.beginLogin))
                   self.reloadInputViews()
               } else {
                   self.navigationTitle = "Sign in"
                   self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: self.navigationTitle, style: .plain, target: self, action: #selector(self.beginRegistration) )
                   self.reloadInputViews()
           }
        print(indexPath.row)
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    lazy var accountSetupButton: UIButton = {
       let button = UIButton()
        button.setTitle("Set up new account", for: UIControl.State.normal)
        button.setTitleColor(.white, for: UIControl.State.normal)
        button.backgroundColor =
        UIColor(red: 67/255, green: 1/255, blue: 192/255, alpha: 1)
        button.layer.cornerRadius = 5
        

        return button
    }()
    lazy var onBoardingCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = UIColor.cyan
        collectionView.isPagingEnabled = true
        
        return collectionView
    }()
    
 
    
    func setUpCollectionView(){
 
        onBoardingCollectionView.translatesAutoresizingMaskIntoConstraints = false
        onBoardingCollectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        onBoardingCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        onBoardingCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        onBoardingCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        setUpButton()
        
    }
    func setUpButton(){
        accountSetupButton.translatesAutoresizingMaskIntoConstraints = false
        accountSetupButton.topAnchor.constraint(equalTo: onBoardingCollectionView.bottomAnchor, constant: 20).isActive = true
        accountSetupButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        accountSetupButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        accountSetupButton.addTarget(self, action: #selector(beginRegistration), for: .touchUpInside)
        
    }
    @objc func beginRegistration(){
        
        delegate?.begin(view: "register")
    }
    @objc func beginLogin(){
        delegate?.begin(view: "login")
    }
}

//glomik
