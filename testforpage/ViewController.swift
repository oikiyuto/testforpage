//
//  ViewController.swift
//  testforpage
//
//  Created by yutos on 2019/05/22.
//  Copyright © 2019 yutos. All rights reserved.
//

import UIKit


struct Pages {
    var viewControllers:[UIViewController] = []
}

class ViewController: UIViewController{

    @IBOutlet weak var collectionView: UICollectionView!
    
        var pages:Pages = Pages(){
            didSet { self.collectionView?.reloadData() }
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
            
            collectionView.dataSource = self
            collectionView.delegate = self
            
            let flowlayout = UICollectionViewFlowLayout()
            let margin: CGFloat = 0
            flowlayout.itemSize = CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height
            )
            flowlayout.minimumInteritemSpacing = margin
            flowlayout.minimumLineSpacing = margin
            flowlayout.sectionInset = UIEdgeInsets(top: margin, left: margin, bottom: margin, right: margin)
            flowlayout.scrollDirection = .horizontal
            
            collectionView.collectionViewLayout = flowlayout
            
            collectionView.isPagingEnabled = true
            collectionView.isScrollEnabled = true
            
            collectionView.translatesAutoresizingMaskIntoConstraints = false
            
            
    }
        
        // MARK: - UICollectionViewDelegate
    
    
         func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 3
        }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
 
    }
  



extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)
        
        if let cell = cell as? CollectionViewCell {
            cell.setup(index: indexPath.row)
        }
        
        return cell
    }
    
  
    
}
