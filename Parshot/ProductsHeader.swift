//
//  ProductsHeader.swift
//  Parshot
//
//  Created by hossam ahmed on 10/1/18.
//  Copyright © 2018 hazem. All rights reserved.
//


import UIKit
class ProductsHeader : FirstSubCategryHeaders {
    
    override func setupViews() {
        super.setupViews()
        // this gon't work
        mainView.isHidden = true
        buyBtn.isHidden = true
        cartValueLabe.isHidden = true
        itemValueLabe.isHidden = true
        cartImage.isHidden = true

    }
    
}
