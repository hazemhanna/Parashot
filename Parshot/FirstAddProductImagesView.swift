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

class FirstAddProductImagesView: BaseCell,FloatRatingViewDelegate {
    
    
    override func setupViews() {
        
        addSubview(mainView)
        mainView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        /////
        mainView.addSubview(itemImage)
        itemImage.centerYAnchor.constraint(equalTo: mainView.centerYAnchor).isActive = true
        itemImage.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -30 ).isActive = true
        itemImage.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.15).isActive = true
        itemImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4).isActive = true
        /////
        mainView.addSubview(item2Image)
        item2Image.centerYAnchor.constraint(equalTo: mainView.centerYAnchor).isActive = true
        item2Image.centerXAnchor.constraint(equalTo: centerXAnchor ).isActive = true
        item2Image.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.15).isActive = true
        item2Image.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4).isActive = true
        //////
        mainView.addSubview(item3Image)
        item3Image.centerYAnchor.constraint(equalTo: mainView.centerYAnchor).isActive = true
        item3Image.leftAnchor.constraint(equalTo: leftAnchor,constant : 30 ).isActive = true
        item3Image.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.15).isActive = true
        item3Image.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4).isActive = true
        
        
    }

    
    let  mainView :UIView = {
        let uv = UIView()
        uv.backgroundColor = .white
        uv.translatesAutoresizingMaskIntoConstraints = false
        return uv
    }()
    
    let itemImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41340190_309132106337334_7072167568491937792_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    let item2Image:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41356482_234556987221009_3617552121928351744_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    let item3Image:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "hazem-2"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    

}




