//
//  AnimalSpeciesCell.swift
//  HuntersPocketGuide
//
//  Created by Tom Dolan on 12/6/17.
//  Copyright © 2017 Tom Dolan. All rights reserved.
//

import Foundation
import UIKit


public class AnimalSpeciesView: UIView {
    
    public var model: AnimalSpeciesModel!
    
    public init(model: AnimalSpeciesModel) {
        self.model = model
        
        super.init()
    }
    
    public func viewForImage(indexPath: UIimage) -> AnimalSpeciesView {
        let imageView = UIImageView(image: image!)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        self.addSubview(imageView)
        imageView.autoPinEdgesToSuperviewEdges()
        imageView.setContentCompressionResistancePriority(.required, for: .vertical)
        imageView.setContentCompressionResistancePriority(.fittingSizeLevel, for: .horizontal)
        
        return imageView
    }
}
