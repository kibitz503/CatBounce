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
    private var featuredImageView: UIImageView?
    private var model: AnimalSpeciesModel?
    
    public init(model: AnimalSpeciesModel) {
        
        self.model = model
        
        
        super.init(frame:.zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.loadModel(model: model)
    }
    
   public  required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func loadModel(model: AnimalSpeciesModel) {
        if let image = model.image {
            loadImage(image: image)
        }
    }
    
    private func loadImage(image: UIImage) {
        if let featuredImageView = featuredImageView {
            featuredImageView.removeFromSuperview()
        }
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        self.addSubview(imageView)
        imageView.autoPinEdgesToSuperviewEdges()
//        imageView.setContentCompressionResistancePriority(.fittingSizeLevel, for: .vertical)
//        imageView.setContentCompressionResistancePriority(.fittingSizeLevel, for: .horizontal)
        
        featuredImageView = imageView
    }
    
    public override func height(forWidth width: CGFloat) -> CGFloat {
        if let featuredImageView = featuredImageView {
             return featuredImageView.height(forWidth: width)
        } else {
            return 0
        }
       
    }
}
