//
//  CollectionViewCell.swift
//  testforpage
//
//  Created by yutos on 2019/05/22.
//  Copyright © 2019 yutos. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setup(index:Int){
        let colorList:[UIColor] = [UIColor.red, UIColor.black, UIColor.blue]
        self.backgroundColor = colorList[index]
    }
}
