//
//  ViewController.swift
//  HuntersPocketGuide
//
//  Created by Tom Dolan on 4/8/17.
//  Copyright © 2017 Tom Dolan. All rights reserved.
//

import UIKit
import PureLayout

class MainMenuViewController: UIViewController {
    let themeStyles = AppThemeStyles()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupView()
        setupMenuButtons()
    }
    

    
    func setupView() {
        view.backgroundColor = themeStyles.viewControllerBackground()
    }
    
    func setupMenuButtons() {
        let button = themeStyles.mainMenuButton(title: "test")
        button.addTarget(self, action: #selector(launchAnimalIdentifier), for: .touchUpInside)
        view.addSubview(button)
        button.autoAlignAxis(.horizontal, toSameAxisOf: view)
        button.autoAlignAxis(.vertical, toSameAxisOf: view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

fileprivate typealias MainMenuViewFactory = MainMenuViewController
fileprivate extension MainMenuViewFactory {
    
    
}

fileprivate typealias MainMenuActionHandler = MainMenuViewController
@objc fileprivate extension MainMenuActionHandler {
    
    fileprivate func launchAnimalIdentifier() {
        let animalViewController = AnimalIdentifierViewController.init()
        self.navigationController?.pushViewController(animalViewController, animated: true)
    }
    
}



