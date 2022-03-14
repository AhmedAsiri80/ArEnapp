//
//  viewcontroller.swift
//  loogaa
//
//  Created by Ahmed Assiri on 12/08/1443 AH.
//


import UIKit

class ViewApple : UIViewController {

    @IBOutlet weak var btnChangeLanguage: UIButton!
    @IBOutlet weak var lblHello: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        lblHello.text = NSLocalizedString("hello", comment: "hello lable")
        btnChangeLanguage.setTitle(NSLocalizedString("changeLanguage", comment: ""), for: .normal)
    }
    
    
    @IBAction func btnChangeLanguageK(_ sender: Any) {
        let currentLang = Locale.current.languageCode
        let newLanguage = currentLang == "en" ? "ar" : "en"
        UserDefaults.standard.setValue([newLanguage], forKey: "AppleLanguages")
        exit(0)
    }
    
}

