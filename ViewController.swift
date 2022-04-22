//
//  ViewController.swift
//  Lect7
//
//  Created by AlexeiPozdnyakov on 21.04.2022.
//

import UIKit


enum TitleStyle {
    case bigRad
    case smallGreen

    func getFont() -> UIFont {
        switch self {
        case .bigRad:
            return UIFont.systemFont(ofSize: 40)
        case .smallGreen:
            return UIFont.systemFont(ofSize: 12)
        }
    }

    func getColor() -> UIColor {
        switch self {
        case .bigRad:
            return .red
        case .smallGreen:
            return .green
        }
    }
}

class CustomLabel: UILabel {
    func setTitleStyle(titleStyle: TitleStyle) {
        self.font = titleStyle.getFont()
        self.textColor = titleStyle.getColor()
    }
}

class ViewController: UIViewController {

    @IBOutlet var titleLabel: CustomLabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTabSmallGreen() {
        titleLabel.setTitleStyle(titleStyle: .smallGreen)
        titleLabel.text = "Новый текст"
    }

    @IBAction func didTabBigRad() {
        titleLabel.setTitleStyle(titleStyle: .bigRad)
    }
}

//extension UILabel {
//    func setTitleStyle(titleStyle: TitleStyle) {
//        self.font = titleStyle.getFont()
//        self.textColor = titleStyle.getColor()
//    }
//}

