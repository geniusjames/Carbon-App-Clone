//
//  OnBoardingCollectionViewCell.swift
//  CarbonMockApp
//
//  Created by Geniusjames on 30/11/2021.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell{
    let appColor = UIColor(red: 67/255, green: 1/255, blue: 192/255, alpha: 1)
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setUpViews()
    }
    
    let carbonImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "carbon")
        
        return image
        
    }()
    let firstOnboardingImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "phoneimage")
        image.backgroundColor = .white
        return image
        
    }()
    
    lazy var headerLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 21)
        label.textAlignment = .center
        return label
    }()
    lazy var detailLabel: UILabel = {
        let label = UILabel()
//        label.font = UIFont.systemFont(ofSize: 12)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setUpViews(){
        backgroundColor = .white
        addSubview(carbonImage)
        addSubview(firstOnboardingImage)
        addSubview(headerLabel)
        addSubview(detailLabel)
        
        carbonImage.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        detailLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let screenSize: CGRect = UIScreen.main.bounds
        let screenHeight = screenSize.height
        let screenWidth = screenSize.width
        let width = screenSize.width/2.5
        let height = screenSize.height/15
        
        
        carbonImage.frame = CGRect(x: screenSize.width/2 - (width/2), y: screenHeight * 0.17, width: width, height: height)
        
        firstOnboardingImage.frame = CGRect(x: screenSize.width/2 - (width/2), y: screenHeight * 0.3, width: width, height: height)
        
        headerLabel.frame = CGRect(x: 0, y: screenHeight * 0.6, width: screenWidth, height: 25)
        detailLabel.frame = CGRect(x: 0, y: screenHeight * 0.7, width: screenWidth, height: 80)
        
    }
}
