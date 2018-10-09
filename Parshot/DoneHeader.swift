//
//  ParashotOffersHeader.swift
//  Parshot
//
//  Created by hazem on 9/30/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit


class DoneHeader : BaseCell {
    
    override func setupViews() {
    
        addSubview(linkview)
        linkview.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        linkview.bottomAnchor.constraint(equalTo: bottomAnchor ,constant : -10).isActive = true
        linkview.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.9).isActive = true
        linkview.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.3).isActive = true
        
        addSubview(segmentedControl)
        segmentedControl.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        segmentedControl.bottomAnchor.constraint(equalTo: linkview.topAnchor,constant : -10 ).isActive = true
        segmentedControl.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.9 ).isActive = true
        segmentedControl.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.3).isActive = true
        segmentedControl.selectedSegmentIndex = 0
        /////
        linkview.addSubview(iconImage)
        iconImage.centerYAnchor.constraint(equalTo: linkview.centerYAnchor).isActive = true
        iconImage.rightAnchor.constraint(equalTo: linkview.rightAnchor ,constant : -10).isActive = true
        iconImage.widthAnchor.constraint(equalTo: linkview.widthAnchor,multiplier : 0.08).isActive = true
        iconImage.heightAnchor.constraint(equalTo: iconImage.widthAnchor).isActive = true
        
        linkview.addSubview(linkTexView)
        linkTexView.centerYAnchor.constraint(equalTo: linkview.centerYAnchor).isActive = true
        linkTexView.rightAnchor.constraint(equalTo: iconImage.leftAnchor ,constant : -10).isActive = true
        linkTexView.widthAnchor.constraint(equalTo: linkview.widthAnchor,multiplier : 0.6).isActive = true
        linkTexView.heightAnchor.constraint(equalTo: linkview.heightAnchor).isActive = true
        
        linkview.addSubview(pastBtn)
        pastBtn.centerYAnchor.constraint(equalTo: linkview.centerYAnchor).isActive = true
        pastBtn.leftAnchor.constraint(equalTo: linkview.leftAnchor ,constant : 10).isActive = true
        pastBtn.widthAnchor.constraint(equalTo: linkview.widthAnchor,multiplier : 0.2).isActive = true
        pastBtn.heightAnchor.constraint(equalTo: linkview.heightAnchor,multiplier : 0.6).isActive = true
    }
   let linkview :UIView={
        let ln = UIView()
        ln.translatesAutoresizingMaskIntoConstraints = false
        ln.layer.borderColor = UIColor.rgb(214, green: 10, blue: 96).cgColor
        ln.layer.borderWidth = 1
        ln.backgroundColor = .white
        ln.layer.cornerRadius = 10
        return ln
        
        
    }()
    /////
    
    let iconImage  :CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "43117210_210601736318582_9000957000812593152_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
   
    
    let linkTexView : UITextField = {
        let NL = UITextField()
        NL.textColor = UIColor.black
        NL.backgroundColor = UIColor.clear
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.attributedPlaceholder = NSAttributedString(string:NSLocalizedString("الصق رابط الموقع ع جوجل ", comment: "this is name"),
                                                      
                                                      attributes:[NSForegroundColorAttributeName: UIColor.rgb(155, green: 155, blue: 155)])
        NL.textAlignment = .right
        return NL
        
    }()
    
    let pastBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.rgb(214, green: 10, blue: 96)
        button.setTitle(NSLocalizedString("لصق", comment: "this is name"),for: .normal)
        button.addTarget(self, action: #selector(asd2), for: .touchUpInside)
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        button.titleLabel?.font  = font!
        button.setTitleColor(UIColor.white, for: UIControlState.normal)  ///// how to give it black color and font
        button.layer.cornerRadius = 5
        return button
    }()
    
    @objc func asd2 (){
        
    }
    
    lazy var  segmentedControl : UISegmentedControl = {
        let SC   = UISegmentedControl(items :["هجين","صورة قمر صناعي","خريطة"] )
        SC.addTarget(self, action: #selector(segmentAction(_:)), for: .valueChanged)
        SC.translatesAutoresizingMaskIntoConstraints = false
        SC.layer.borderColor = UIColor.rgb(214, green: 10, blue: 96).cgColor
        SC.backgroundColor = .white
        SC.layer.cornerRadius = 20
        SC.tintColor = UIColor.rgb(214, green: 10, blue: 96)
        return SC
        }()
    
        @objc func segmentAction(_ segmentedControl: UISegmentedControl) {
        switch (segmentedControl.selectedSegmentIndex) {
        
            
        case 0:
            break
        
        case 1:
            break
        
        case 2:
            break
        
        
        default:
            break
        
        }
    }
    
}

