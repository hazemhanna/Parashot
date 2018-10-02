//
//  ParashotOffersHeader.swift
//  Parshot
//
//  Created by hazem on 9/30/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit


class ParashotOffersHeader : FirstSubCategryHeaders {
    
   
    var controller : parashotOffersMainController?
    override func setupViews() {
        super.setupViews()
        
        mainView.isHidden = true
        buyBtn.isHidden = true
        cartValueLabe.isHidden = true
        itemValueLabe.isHidden = true
        cartImage.isHidden = true
        
        
        addSubview(segmentedControl)
        segmentedControl.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        segmentedControl.bottomAnchor.constraint(equalTo: bottomAnchor ).isActive = true
        segmentedControl.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.6 ).isActive = true
        segmentedControl.heightAnchor.constraint(equalToConstant :30).isActive = true
       segmentedControl.selectedSegmentIndex = 0
    
       
    
    }
 
    lazy var  segmentedControl : UISegmentedControl = {
    let SC   = UISegmentedControl(items : ["صفقات ","عروض"])
     SC.addTarget(self, action: #selector(segmentAction(_:)), for: .valueChanged)
     SC.translatesAutoresizingMaskIntoConstraints = false
     SC.backgroundColor = .white
     SC.layer.cornerRadius = 7
     return SC
    
    
    }()

    
@objc func segmentAction(_ segmentedControl: UISegmentedControl) {
    switch (segmentedControl.selectedSegmentIndex) {
    
    case 0:
       controller?.selectedIndex = 0
       
        break
    case 1:
        controller?.selectedIndex = 1
        
        break
    default:
        break
    }

    
    }

}
