//
//  ViewController.swift
//  CatBounce
//
//  Created by Tom Dolan on 4/8/17.
//  Copyright © 2017 Tom Dolan. All rights reserved.
//

import UIKit
//import GameKit

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
        
        view.addSubview(button)
        button.autoAlignAxis(.horizontal, toSameAxisOf: view)
        button.autoAlignAxis(.vertical, toSameAxisOf: view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

private typealias ViewFactory = MainMenuViewController
fileprivate extension ViewFactory {
    
    
}



