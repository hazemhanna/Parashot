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

class AddProductColorView: BaseCell {
    
    
    override func setupViews() {
        
        backgroundColor = UIColor.white
        addSubview(fView)
        fView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        fView.centerXAnchor.constraint(equalTo:centerXAnchor ).isActive = true
        fView.widthAnchor.constraint(equalTo:  widthAnchor,multiplier : 0.9).isActive = true
        fView.heightAnchor.constraint(equalTo: fView.widthAnchor).isActive = true
        
        
        
        
    }
    
    
    
    
    
    let  fView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.red
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.cornerRadius = 20
        
        return uv
    }()
 
    
    
}




