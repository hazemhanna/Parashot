//
//  DepartmentView.swift
//  Parshot
//
//  Created by hazem on 9/3/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit


class ThirdDepartmentView : BaseCell {
    
    
    override func setupViews() {
        
        addSubview(mainView)
        mainView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        
        mainView.addSubview(departmentImage)
        departmentImage.topAnchor.constraint(equalTo: mainView.topAnchor,constant : 10).isActive = true
        departmentImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        departmentImage.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 1/2).isActive = true
        departmentImage.heightAnchor.constraint(equalTo: heightAnchor ,multiplier : 0.6).isActive = true
        
        
        mainView.addSubview(pointView)
        pointView.topAnchor.constraint(equalTo: departmentImage.bottomAnchor).isActive = true
        pointView.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -10).isActive = true
        pointView.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.04).isActive = true
        pointView.heightAnchor.constraint(equalTo:  pointView.widthAnchor).isActive = true
        
        mainView.addSubview(lineView)
        lineView.centerYAnchor.constraint(equalTo: pointView.centerYAnchor).isActive = true
        lineView.rightAnchor.constraint(equalTo: pointView.leftAnchor).isActive = true
        lineView.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.7).isActive = true
        lineView.heightAnchor.constraint(equalToConstant : 1).isActive = true


        mainView.addSubview(seconPointView)
        seconPointView.topAnchor.constraint(equalTo: departmentImage.bottomAnchor).isActive = true
        seconPointView.rightAnchor.constraint(equalTo: lineView.leftAnchor).isActive = true
        seconPointView.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.04).isActive = true
        seconPointView.heightAnchor.constraint(equalTo:  pointView.widthAnchor).isActive = true
        
        
        
        mainView.addSubview(namelabel)
        namelabel.topAnchor.constraint(equalTo: lineView.bottomAnchor,constant : 5).isActive = true
        namelabel.centerXAnchor.constraint(equalTo: departmentImage.centerXAnchor).isActive = true

    }
    
    lazy var departmentImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41185635_2205340332869770_1749318636104843264_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    let  mainView :UIView = {
        let ci = UIView()
        ci.backgroundColor = UIColor.white
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.layer.cornerRadius = 30
        ci.layer.shadowColor = UIColor.black.cgColor
        ci.layer.shadowOffset = CGSize(width: -0.5, height: 1)
        ci.layer.shadowOpacity = 0.1
        ci.layer.shadowRadius = 10
        ci.layer.masksToBounds = false
        ci.clipsToBounds = false
        return ci
        
    }()
    
    let  pointView :UIView = {
        let ci = UIView()
        ci.layer.cornerRadius = 3
        ci.backgroundColor = UIColor.rgb(63, green: 6, blue: 47)
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
     let  seconPointView :UIView = {
        let ci = UIView()
        ci.layer.cornerRadius = 3
        ci.backgroundColor = UIColor.rgb(63, green: 6, blue: 47)
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    let  lineView :UIView = {
        let ci = UIView()
        ci.backgroundColor = UIColor.rgb(63, green: 6, blue: 47)
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
