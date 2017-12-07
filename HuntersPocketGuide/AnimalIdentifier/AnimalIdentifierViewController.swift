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
    
    let reuseIdentifier = "test"
    let layout = CHTCollectionViewWaterfallLayout.init()
    
    public init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        
        view.backgroundColor = UIColor.red
        let collectionView = UICollectionView.init(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self
        
        self.view.addSubview(collectionView)
        collectionView.autoPinEdgesToSuperviewMargins()
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    // MARK: UICollectionViewDelegate
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    // MARK: UICollectionViewDataSource
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as UICollectionViewCell
        
//        cell.translatesAutoresizingMaskIntoConstraints = false

        return cell
    }
    
    // MARK: CHTCollectionViewDelegateWaterfallLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: IndexPath) -> CGSize {
//        let cell = self.collectionView(collectionView, cellForItemAt: indexPath)
        
       
        
            //Make wrapper view for images, get height for width
            let height = wrapperView.systemLayoutSizeFitting(UILayoutFittingCompressedSize).height
            let size = CGSize.init(width: layout.itemWidthInSectionAtIndex(indexPath.section), height: height)
            return size
//        }
        
    }
    
    
}
