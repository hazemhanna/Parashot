//
//  DepartmentView.swift
//  Parshot
//
//  Created by hazem on 9/3/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit


class SecondDepartmentView : BaseCell {
    
    
    override func setupViews() {
        
        addSubview(mainView)
        mainView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        
        mainView.addSubview(departmentImage)
        departmentImage.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -10).isActive = true
        departmentImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        departmentImage.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.15).isActive = true
        departmentImage.heightAnchor.constraint(equalTo: heightAnchor ,multiplier : 0.8).isActive = true
        
        
        
        
        mainView.addSubview(namelabel)
        namelabel.leftAnchor.constraint(equalTo: mainView.leftAnchor,constant : 10).isActive = true
        namelabel.centerYAnchor.constraint(equalTo: departmentImage.centerYAnchor).isActive = true
        
    }
    
    lazy var departmentImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "like"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    let  mainView :UIView = {
        let ci = UIView()
        ci.backgroundColor = UIColor.white
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    let namelabel :UILabel = {
        let pl = UILabel()
        pl.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        pl.font = font
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.text = NSLocalizedString("pharmacy", comment: "this is name")
        return pl
        
    }()
    
    
}
