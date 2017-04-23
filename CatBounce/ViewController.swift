//
//  ViewController.swift
//  CatBounce
//
//  Created by Tom Dolan on 4/8/17.
//  Copyright © 2017 Tom Dolan. All rights reserved.
//

import UIKit
import GameKit

class ViewController: UIViewController {

    var scnView: SCNView!
    var scnScene: SCNScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupView()
        setupScene()
    }
    
    func setupView() {
        scnView = SCNView()
        view.addSubview(scnView)
        scnView.translatesAutoresizingMaskIntoConstraints = false
        scnView.autoPinEdgesToSuperviewEdges()
    }
    
    func setupScene() {
        scnScene = SCNScene()
        scnView.scene = scnScene
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

