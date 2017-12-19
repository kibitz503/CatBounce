//
//  CollectionViewSection.swift
//  HuntersPocketGuide
//
//  Created by Tom Dolan on 12/6/17.
//  Copyright © 2017 Tom Dolan. All rights reserved.
//

import Foundation
import UIKit

public class CollectionViewSection {
    var header: UIView?
    var footer: UIView?
    var cells: [UIView]!
    
    init() {
        self.cells = [];
    }
}
