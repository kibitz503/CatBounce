//
//  AppThemeStyles.swift
//  HuntersPocketGuide
//
//  Created by Tom Dolan on 11/30/17.
//  Copyright © 2017 Tom Dolan. All rights reserved.
//

import Foundation
import UIKit

class AppThemeStyles {
    
    func mainMenuButton(title: String) -> UIButton {
        let background = UIImage(named:"ButtonBackground")!.stretchableImage(withLeftCapWidth: 15, topCapHeight: 0)
        let pressedBackground = UIImage(named:"ButtonPressedBackground")!.stretchableImage(withLeftCapWidth: 15, topCapHeight: 0)
        
        return mainMenuButtonGenerator(title: title, background: background , pressedBackground: pressedBackground)
    }
    
    func mainMenuButtonGenerator(title: String, background: UIImage, pressedBackground: UIImage) -> UIButton {
        let button = TitleButton.init(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = UIFont(name: "Action Man", size: 35)
        
        let color = UIColor.init(red: 194.0/255.0, green: 222.0/255.0, blue: 191.0/255.0, alpha: 1)
        button.setTitleColor(color, for: .normal)
        let pressedColor = UIColor.init(red: 85.0/255.0, green: 140.0/255.0, blue: 69.0/255.0, alpha: 1)
        button.setTitleColor(pressedColor, for: .selected)
        button.setTitleColor(pressedColor, for: .highlighted)
        
        button.titleEdgeInsets = UIEdgeInsetsMake(15,10,10,12)
        
        button.setBackgroundImage(background, for: .normal)
        button.setBackgroundImage(pressedBackground, for: .selected)
        
        return button
    }
    
    func viewControllerBackground() -> UIColor {
        return UIColor.init(patternImage:UIImage(named:"Felt")!)
    }
}

class TitleButton: UIButton {
    
    override var intrinsicContentSize: CGSize {
        let labelSize = titleLabel?.sizeThatFits(CGSize(width: frame.width, height: .greatestFiniteMagnitude)) ?? .zero
        let desiredButtonSize = CGSize(width: labelSize.width + titleEdgeInsets.left + titleEdgeInsets.right, height: labelSize.height + titleEdgeInsets.top + titleEdgeInsets.bottom)
        
        return desiredButtonSize
    }
    
    // Whever the button is changed or needs to layout subviews,
    override func layoutSubviews() {
        super.layoutSubviews()
        titleLabel?.preferredMaxLayoutWidth = self.titleLabel!.frame.size.width
    }
}

