//
//  AnimalSpeciesViewFactory.swift
//  HuntersPocketGuide
//
//  Created by Tom Dolan on 12/6/17.
//  Copyright © 2017 Tom Dolan. All rights reserved.
//

import Foundation
import UIKit

public class AnimalSpeciesViewFactory {
    
    
    
    public func animalsForDisplay() -> [CollectionViewSection] {
        var sections: [CollectionViewSection]
        let section = CollectionViewSection.init()
        
        for value in 0 ... 100 {
            let model = AnimalSpeciesModel()
            let image = imageGenerator(value: value)
            model.image = image;
            
            section.cells.append(AnimalSpeciesView.init(model: model))
        }
        
        
        sections = [section]
        return sections
    }
    
    func imageGenerator(value: Int) -> UIImage {
        var image: UIImage!
        
        if value == 0 {
            image = UIImage(named: "AmericanRedSquirrel.png")
        } else if value % 7 == 0 {
            image = UIImage(named: "DouglasSquirrel.png")
        } else if value % 5 == 0 {
            image = UIImage(named: "EasternFoxSquirrel.png")
        } else if value % 3 == 0 {
            image = UIImage(named: "EasternGraySquirrel.png")
        } else if value % 2 == 0 {
            image = UIImage(named: "NorthernFlyingSquirrel.png")
        } else {
            image = UIImage(named: "WesternGraySquirrel.png")
        }
        
        return image
    }
    
}
