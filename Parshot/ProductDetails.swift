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

class ProductDetails: BaseCell,FloatRatingViewDelegate {
    
    
    override func setupViews() {
        
        
      
            
            
            
            addSubview(fView)
            fView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
            fView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
            fView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
            fView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
            
            
            fView.addSubview(descriptoonLabel)
            descriptoonLabel.topAnchor.constraint(equalTo: fView.topAnchor, constant : 10 ).isActive = true
            descriptoonLabel.rightAnchor.constraint(equalTo: fView.rightAnchor).isActive = true
        
        
        addSubview(lineView)
        lineView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        lineView.topAnchor.constraint(equalTo: descriptoonLabel.bottomAnchor,constant : 5).isActive = true
        lineView.widthAnchor.constraint(equalTo: fView.widthAnchor).isActive = true
        lineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        
        
        
            fView.addSubview(productDescriotion)
            productDescriotion.topAnchor.constraint(equalTo: descriptoonLabel.bottomAnchor , constant : 10 ).isActive = true
            productDescriotion.rightAnchor.constraint(equalTo: fView.rightAnchor, constant: -10).isActive = true
            productDescriotion.widthAnchor.constraint(equalTo: fView.widthAnchor,multiplier : 0.6).isActive = true
            productDescriotion.heightAnchor.constraint(equalTo: fView.heightAnchor,multiplier : 0.5).isActive = true
            
        
       
        
        fView.addSubview(leftArowImage)
        leftArowImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        leftArowImage.leftAnchor.constraint(equalTo:  leftAnchor,constant : 10).isActive = true
        leftArowImage.widthAnchor.constraint(equalTo:  fView.widthAnchor,multiplier : 0.02).isActive = true
        leftArowImage.heightAnchor.constraint(equalTo : leftArowImage.widthAnchor).isActive = true
        
        }
    
         ///////  first View
          let  fView :UIView = {
            let uv = UIView()
            uv.backgroundColor = UIColor.white
            uv.translatesAutoresizingMaskIntoConstraints = false
            uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
            uv.layer.borderWidth = 1
            return uv
        }()
        
        
        let descriptoonLabel :UILabel = {
            let NL = UILabel()
            NL.textColor = UIColor.black
            var font = UIFont(name: "JFFlat-Regular", size: 14)
            NL.font = font
            NL.translatesAutoresizingMaskIntoConstraints = false
            NL.text = NSLocalizedString(" مواصفات المنتج  ", comment: "this is name")
            return NL
            
        }()
        
        
        let productDescriotion :UITextView = {
            let NL = UITextView()
            NL.textColor = UIColor.black
            NL.textAlignment = .right
            NL.isEditable = false
            NL.isScrollEnabled = false
            NL.isSelectable = false
            NL.translatesAutoresizingMaskIntoConstraints = false
            NL.text = NSLocalizedString("   الااابه اا ين  هبت  تت   يحتور ع هاتف خلوي لا يمكن لا احد ان ياخدة منك الا بما يدفع لك البضانات ", comment: "this is name")
            return NL
            
        }()


    
    let leftArowImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41393510_381842899017264_6044721716666564608_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()


    let  lineView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        uv.translatesAutoresizingMaskIntoConstraints = false
        return uv
    }()


}




