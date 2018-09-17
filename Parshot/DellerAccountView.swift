//
//  DepartmentView.swift
//  Parshot
//
//  Created by hazem on 9/3/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit


class DellerAccountView : BaseCell {
    
    
    override func setupViews() {
        addSubview(mainView)
        mainView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.9).isActive = true
        mainView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        
        mainView.addSubview(departmentImage)
        departmentImage.topAnchor.constraint(equalTo: mainView.topAnchor,constant : 10).isActive = true
        departmentImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        departmentImage.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 1/2).isActive = true
        departmentImage.heightAnchor.constraint(equalTo: heightAnchor ,multiplier : 1/2).isActive = true
        
        
        
        
        mainView.addSubview(namelabel)
        namelabel.topAnchor.constraint(equalTo: departmentImage.bottomAnchor,constant : 10).isActive = true
        namelabel.centerXAnchor.constraint(equalTo: departmentImage.centerXAnchor).isActive = true
        
    }
    
    let  mainView :UIView = {
        let ci = UIView()
        ci.backgroundColor = UIColor.white
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        ci.layer.borderWidth = 1
        return ci
        
    }()
    
    
    let  departmentImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "budget"))
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
