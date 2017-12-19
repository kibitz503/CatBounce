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
    
    @objc public func height(forWidth width: CGFloat) -> CGFloat {
        let constraint = autoSetDimension(.width, toSize: width)
        constraint.priority = .required;
        
        addConstraint(constraint)
        setNeedsLayout()
        layoutIfNeeded()
        
        let size = self.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
        
        let preferredSize = systemLayoutSizeFitting(size,
                                                    withHorizontalFittingPriority: .defaultHigh,
                                                    verticalFittingPriority: .fittingSizeLevel)
        
        
        
        removeConstraint(constraint)
        
        return preferredSize.height;
    }
    
}

extension UIImageView {
    @objc public override func height(forWidth width: CGFloat) -> CGFloat {
        guard width > 0 else {
            return 0
        }
        
        let originalSize = self.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
        
        let ratio = originalSize.width/width
        
        guard ratio > 0 else {
            return 0
        }
        
        let adjustedHeight = originalSize.height/ratio
        return adjustedHeight
    }
}
