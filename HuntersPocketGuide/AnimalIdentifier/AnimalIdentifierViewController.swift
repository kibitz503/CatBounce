//
//  AnimalIdentifierViewController.swift
//  HuntersPocketGuide
//
//  Created by Tom Dolan on 12/3/17.
//  Copyright © 2017 Tom Dolan. All rights reserved.
//

import Foundation
import CHTCollectionViewWaterfallLayout

class AnimalIdentifierViewController: UIViewController, CHTCollectionViewDelegateWaterfallLayout, UICollectionViewDelegate, UICollectionViewDataSource {
    
    public init() {
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = UIColor.red
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: UICollectionViewDelegate
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    // MARK: UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    // MARK: CHTCollectionViewDelegateWaterfallLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: IndexPath) -> CGSize {
        return CGSize.zero
    }
    
    
}
