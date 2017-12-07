//
//  UIView+extensions.swift
//  HuntersPocketGuide
//
//  Created by Tom Dolan on 12/6/17.
//  Copyright © 2017 Tom Dolan. All rights reserved.
//

import Foundation
import UIKit
import PureLayout

extension UIView {
    
    public func height(width: CGFloat) -> CGFloat {
        let constraint = autoSetDimension(.width, toSize: width)
        constraint.priority = .defaultHigh;
        
        self.addConstraint(constraint)
        
        let height = self.systemLayoutSizeFitting(UILayoutFittingCompressedSize).height
        
        removeConstraint(constraint)
        
        return height;
    }
    
}
