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
    let viewFactory = AnimalSpeciesViewFactory()
    var sections: [CollectionViewSection]?
    
    public init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        sections = viewFactory.animalsForDisplay()
    }
    
    func setupView() {
        
        view.backgroundColor = UIColor.red
        let collectionView = UICollectionView.init(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self
        
        self.view.addSubview(collectionView)
        collectionView.autoPinEdgesToSuperviewMargins()
        
        collectionView.register(CollectionViewCellWrapper.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    // MARK: UICollectionViewDelegate
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    // MARK: UICollectionViewDataSource
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        if let sections = sections {
            return sections.count
        } else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let sections = sections, sections.count >= section {
            return sections[section].cells.count
        } else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionViewCellWrapper
        
        if let sections = sections, sections.count >= indexPath.section, sections[indexPath.section].cells.count >= indexPath.row {
            let view = sections[indexPath.section].cells[indexPath.row]
            cell.loadInternalView(view: view)
        }
        
        return cell;
    }
    
    // MARK: CHTCollectionViewDelegateWaterfallLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: IndexPath) -> CGSize {
        
        if let sections = sections, sections.count >= indexPath.section, sections[indexPath.section].cells.count >= indexPath.row {
            let view = sections[indexPath.section].cells[indexPath.row]
            let rowWidth = layout.itemWidthInSectionAtIndex(indexPath.section)
            let height = view.height(forWidth: rowWidth)
            let size = CGSize.init(width: rowWidth, height: height)
            return size
        } else {
            return .zero
        }
    }
}
