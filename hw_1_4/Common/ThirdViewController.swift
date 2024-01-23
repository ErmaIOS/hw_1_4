//
//  ThirdViewController.swift
//  hw_1_4
//
//  Created by Erma on 15/1/24.
//

import UIKit

class ThirdViewController: UIViewController {
    
    private lazy var lockImage = MakeView.shared.makerImage(imageName: "lockImage",imageTintColor: UIColor.init(hex: "#A8A8A8"),imageBackgroundColor: UIColor.init(hex: "#4AC6E9"))

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(hex: "#4AC6E9")
    }
    

    

}
