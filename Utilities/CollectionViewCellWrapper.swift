//
//  CollectionViewCellWrapper.swift
//  HuntersPocketGuide
//
//  Created by Tom Dolan on 12/31/16.
//  Copyright © 2016 Tom Dolan. All rights reserved.
//

import Foundation
import UIKit

public class CollectionViewCellWrapper: UICollectionViewCell {
    private var internalView: UIView?
    
    public override func prepareForReuse() {
        super.prepareForReuse()
        
        if let internalView = internalView {
            internalView.removeFromSuperview()
        }
    }
    
    public func loadInternalView(view: UIView) {
        contentView.addSubview(view)
        contentView.backgroundColor = .green
        internalView = view
        view.autoPinEdgesToSuperviewMargins()
    }
}
