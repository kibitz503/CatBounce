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
        let layout = CHTCollectionViewWaterfallLayout.init()
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

        var image: UIImage? = nil
        if indexPath.row == 0 {
            image = UIImage(named: "AmericanRedSquirrel.png")
        } else if indexPath.row % 7 == 0 {
            image = UIImage(named: "DouglasSquirrel.png")
        } else if indexPath.row % 5 == 0 {
            image = UIImage(named: "EasternFoxSquirrel.png")
        } else if indexPath.row % 3 == 0 {
            image = UIImage(named: "EasternGraySquirrel.png")
        } else if indexPath.row % 2 == 0 {
            image = UIImage(named: "NorthernFlyingSquirrel.png")
        } else {
            image = UIImage(named: "WesternGraySquirrel.png")
        }
        
        let imageView = UIImageView(image: image!)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        cell.contentView.addSubview(imageView)
        imageView.autoPinEdgesToSuperviewMargins()
        return cell
    }
    
    // MARK: CHTCollectionViewDelegateWaterfallLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: IndexPath) -> CGSize {
        let unwrapedCell = collectionView.cellForItem(at: indexPath)
        
        if let cell = unwrapedCell {
            let size = CGSize.init(width: collectionView.frame.size.width, height:cell.systemLayoutSizeFitting(UILayoutFittingCompressedSize).height )
            return size
        }
        
        return CGSize.init(width: collectionView.frame.size.width, height: 100)
    }
}
