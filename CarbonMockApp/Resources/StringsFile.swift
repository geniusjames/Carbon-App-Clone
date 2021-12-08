//
//  StringsFile.swift
//  CarbonMockApp
//
//  Created by Geniusjames on 29/11/2021.
//

import Foundation
import UIKit

final class StringsFile{
    // HEADER
    final let headerOne = "Go beyond banking"
    final let headerTwo = "Stay onTop of your finances \n Anytime. Anywhere"
    final let headerThree = "Trusted by millions"
    
    // DETAILS
    
    final let detailOne = "Welcome to the future. Carbon is your \n passport to world-class financial \n services, built just for you."
    final let detailTwo = "Carbon makes financial services faster, \n cheaper and more convenient. You can \n access the app 24/7 wherever you are."
    final let detailThree = "With Carbon's market-leading service \n already used by millions of people just \n like you, you are in a very good company."
    
    final let signInTypeOne = "Skip"
    final let signInTypeTwo = "Sign In"
    final let signInTypeThree = "Sign In"
    
    final let imageName = ["imageone", "imagetwo", "imagethree"]
    
    lazy var headers = [headerOne, headerTwo, headerThree]
    lazy var details = [detailOne, detailTwo, detailThree]
    lazy var signInType = [signInTypeOne, signInTypeTwo, signInTypeThree]
    
    // SIGNIN PAGE
    final let signInText = "Hi there, welcome back. Please sign in"
    
    
    // SET UP PAGE
    final let setUpHeader = "Let's set things up. Please fill out the basic details \n to get started."
    
    final let termsAndConditions: NSMutableAttributedString = {
        
        let attributedText = NSMutableAttributedString()
        let firstText = "By continuing, you accept our "
        let secondText = "Terms of Service "
        let thirdText = "\n & "
        let fourthText = " Privacy Policy"
        let blueAttribute = [NSAttributedString.Key.foregroundColor: UIColor.blue]
        let grayAttribute = [NSAttributedString.Key.foregroundColor: UIColor.gray]
        let attributedStringOne = NSMutableAttributedString(string: firstText, attributes: grayAttribute)
        let attrubutedStringTwo = NSMutableAttributedString(string: secondText, attributes: blueAttribute)
        let attributedStringThree = NSMutableAttributedString(string: thirdText, attributes: grayAttribute)
        let attrubutedStringFour = NSMutableAttributedString(string: fourthText, attributes: blueAttribute)
        
        //  let termsAndconditionsText =
        attributedStringOne.append(attrubutedStringTwo)
        attributedStringOne.append(attributedStringThree)
        attributedStringOne.append(attrubutedStringFour)
        
        return attributedStringOne
  }()
    // PICKER ITEMS
    let countryCodes = ["+234", "+1", "+44", "+33", "+233"]
    let countryNames = ["nigeria", "usa", "uk", "france", "ghana"]
    
    let gender = ["male", "female", "trans"]
}
