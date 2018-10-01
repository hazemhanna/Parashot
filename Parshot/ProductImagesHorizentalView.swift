//
//  SecondSubCategryView.swift
//  Parshot
//
//  Created by hazem on 9/8/18.
//  Copyright © 2018 hazem. All rights reserved.
//

//
//  FirstSubCategryView.swift
//  Parshot
//
//  Created by hazem on 9/8/18.
//  Copyright © 2018 hazem. All rights reserved.
//



import UIKit

class ProductImagesHorizentalView: BaseCell {
    
    
    override func setupViews() {
        
        addSubview(mainView)
        mainView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        
        mainView.addSubview(itemImage)
        itemImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        itemImage.centerXAnchor.constraint(equalTo: mainView.centerXAnchor  ).isActive = true
        itemImage.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.2).isActive = true
        itemImage.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.6).isActive = true
        
        
        mainView.addSubview(rightArowImage)
        rightArowImage.centerYAnchor.constraint(equalTo: itemImage.centerYAnchor).isActive = true
        rightArowImage.rightAnchor.constraint(equalTo: rightAnchor,constant : -10).isActive = true
        rightArowImage.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.04).isActive = true
        rightArowImage.heightAnchor.constraint(equalTo : rightArowImage.widthAnchor).isActive = true
        
        
        
        mainView.addSubview(leftArowImage)
        leftArowImage.centerYAnchor.constraint(equalTo: itemImage.centerYAnchor).isActive = true
        leftArowImage.leftAnchor.constraint(equalTo:  leftAnchor,constant : 10).isActive = true
        leftArowImage.widthAnchor.constraint(equalTo:  mainView.widthAnchor,multiplier : 0.04).isActive = true
        leftArowImage.heightAnchor.constraint(equalTo : leftArowImage.widthAnchor).isActive = true
        
        
        mainView.addSubview(zoomImage)
        zoomImage.topAnchor.constraint(equalTo: mainView.topAnchor,constant : 10).isActive = true
        zoomImage.leftAnchor.constraint(equalTo:  leftAnchor,constant : 10).isActive = true
        zoomImage.widthAnchor.constraint(equalTo:  mainView.widthAnchor,multiplier : 0.04).isActive = true
        zoomImage.heightAnchor.constraint(equalTo : leftArowImage.widthAnchor).isActive = true
        
        
        
        
    }
    
    let  mainView :UIView = {
        let uv = UIView()
        uv.backgroundColor = .white
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        uv.layer.cornerRadius = 3
        return uv
    }()
    
    let itemImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41356482_234556987221009_3617552121928351744_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    let leftArowImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41393510_381842899017264_6044721716666564608_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    let rightArowImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41392521_384301442106017_1713697830914228224_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    
    let zoomImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "search2"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
}




