//
//  MakeView.swift
//  hw_1_4
//
//  Created by Erma on 15/1/24.
//

import UIKit

class MakeView{
    
    static let shared = MakeView()
    
    func makerLabel(text:String = "",
                    textColor: UIColor = .white,
                    textSize:CGFloat = 20,
                    textAlpha:CGFloat = 0.61,
                    textWeight:UIFont.Weight = .medium
                    ) -> UILabel {
        let view = UILabel()
        view.text = text
        view.textColor = textColor
        view.font = .systemFont(ofSize: textSize,weight: textWeight)
        view.alpha = textAlpha
        return view
    }
    
    
    func makerView(viewBackgroundColor: UIColor = .black,
                   viewBorderColor: CGColor = UIColor.red.cgColor,
                   viewCornerRadius: CGFloat = 12) -> UIView{
        let view = UIView()
        view.backgroundColor = viewBackgroundColor
        view.layer.borderColor = viewBorderColor
        view.layer.cornerRadius = viewCornerRadius
        return view
    }
    
    
    func makerTF(tfPlaceholder: String = "",
                 tfBorderColor: CGColor = UIColor.red.cgColor,
                 tfCornerRadius: CGFloat = 12,
                 tfTextSize: CGFloat = 20,
                 tfLeftViewMode: UITextField.ViewMode = .always,
                 tfTextColor: UIColor = .blue) -> UITextField{
        let view = UITextField()
        view.placeholder = tfPlaceholder
        view.layer.borderColor = tfBorderColor
        view.layer.cornerRadius = tfCornerRadius
        view.font = .systemFont(ofSize: tfTextSize)
        let view2 = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 5))
        view.leftView = view2
        view.leftViewMode = tfLeftViewMode
        view.textColor = tfTextColor
        return view
    }
    
    func makerImage(imageName: String = "",
                    imageContentMode: UIView.ContentMode = .scaleAspectFit,
                    imageBackgroundColor: UIColor = .white,
                    imageTintColor: UIColor = .white
                    )-> UIImageView{
        let view = UIImageView()
        view.image = UIImage(named: imageName)
        view.contentMode = imageContentMode
        view.backgroundColor = imageBackgroundColor
        view.tintColor = imageTintColor
        return view
    }
    
    func makerButton(buttonSetTitle: String = "",
                     buttonSetTitleFor: UIControl.State = .normal,
                     buttonSetTitleColor: UIColor = .black,
                     buttonTitleSize : CGFloat = 20,
                     buttonCornerRadius: CGFloat = 12,
                     buttonBackgroundColor: UIColor = .black,
                     buttonSelector: Selector,
                     buttonSelf: Any?,
                     buttonControl: UIControl.Event = .touchUpInside
                     )-> UIButton{
        let view = UIButton(type: .system)
        view.setTitle(buttonSetTitle, for: buttonSetTitleFor)
        view.setTitleColor(buttonSetTitleColor, for: buttonSetTitleFor)
        view.titleLabel?.font = UIFont.systemFont(ofSize: buttonTitleSize)
        view.layer.cornerRadius = buttonCornerRadius
        view.backgroundColor = buttonBackgroundColor
        view.addTarget(buttonSelf, action: buttonSelector, for: buttonControl)
        return view
       
    }
}



