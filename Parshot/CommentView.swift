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

class CommentView: BaseCell,FloatRatingViewDelegate {
    
    override func setupViews() {
        
        
        addSubview(mainView)
        mainView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        mainView.addSubview(circleView)
        circleView.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -10).isActive = true
        circleView.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier:0.12).isActive = true
        circleView.centerYAnchor.constraint(equalTo: mainView.centerYAnchor ).isActive = true
        circleView.heightAnchor.constraint(equalTo: circleView.widthAnchor).isActive = true
        circleView.isUserInteractionEnabled = true
        
        
        
        
        
        circleView.addSubview(profilImage)
        profilImage.centerYAnchor.constraint(equalTo: circleView.centerYAnchor).isActive = true
        profilImage.centerXAnchor.constraint(equalTo: circleView.centerXAnchor ).isActive = true
        profilImage.widthAnchor.constraint(equalTo: circleView.widthAnchor).isActive = true
        profilImage.heightAnchor.constraint(equalTo:profilImage.widthAnchor ).isActive = true
        self.profilImage.layer.cornerRadius = self.profilImage.frame.width/15
        self.profilImage.clipsToBounds = true
        
        
        mainView.addSubview(profileName)
        profileName.rightAnchor.constraint(equalTo: profilImage.leftAnchor ,constant : -10).isActive = true
        profileName.topAnchor.constraint(equalTo: mainView.topAnchor,constant : 20).isActive = true
        
        
        
        
        mainView.addSubview(floatRatingView)
        floatRatingView.topAnchor.constraint(equalTo: profileName.topAnchor).isActive = true
        floatRatingView.rightAnchor.constraint(equalTo: profileName.leftAnchor,constant:-10).isActive = true
        floatRatingView.heightAnchor.constraint(equalToConstant: 15).isActive = true
        floatRatingView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        floatRatingView.editable = false
        floatRatingView.delegate = self
        floatRatingView.contentMode = UIViewContentMode.scaleAspectFit
        floatRatingView.type = .halfRatings
        floatRatingView.fullImage = UIImage(named:"star98")
        floatRatingView.emptyImage = UIImage(named:"emptystar")
        floatRatingView.rating = 5.0
        
        
        
        mainView.addSubview(CommentTV)
        CommentTV.rightAnchor.constraint(equalTo: profilImage.leftAnchor ,constant : -10).isActive = true
        CommentTV.topAnchor.constraint(equalTo: profileName.bottomAnchor,constant : 10).isActive = true
        CommentTV.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.8).isActive = true
        CommentTV.heightAnchor.constraint(equalTo: mainView.heightAnchor,multiplier : 0.3).isActive = true
        CommentTV.textAlignment = .right
  
        
        
        mainView.addSubview(timeLabel)
        timeLabel.leftAnchor.constraint(equalTo: leftAnchor ,constant : 10).isActive = true
        timeLabel.topAnchor.constraint(equalTo: mainView.topAnchor,constant : 10).isActive = true
        
        
        
        
        
    }
    
    
    
    let  mainView :UIView = {
        let uv = UIView()
        uv.backgroundColor = .clear
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        uv.layer.cornerRadius  = 15

        return uv
    }()
    
    
    
    let profilImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "42255710_2197455850512650_5565562421956837376_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    let  circleView :UIView = {
        let uv = UIView()
        uv.backgroundColor =  UIColor.rgb(230, green: 234, blue: 237)
        uv.layer.cornerRadius = 35
        uv.translatesAutoresizingMaskIntoConstraints = false
        return uv
    }()
    
    
    
    let profileName :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("حسام حسين رضوان", comment: "this is name")
        return NL
        
    }()
    
    
    let CommentTV :UITextView = {
        let NL = UITextView()
        NL.textColor = UIColor.black
        NL.backgroundColor = UIColor.clear
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" ابب الل ااال ي ا ابااب ااببب اسم المندوب", comment: "this is name")
       NL.isEditable = false
        
        return NL
        
    }()
    
 
    
    

    let timeLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("3:45 pm", comment: "this is name")
        return NL
        
    }()
    
    
    let floatRatingView: FloatRatingView  = {
        let departnames = FloatRatingView()
        departnames.translatesAutoresizingMaskIntoConstraints = false
        return departnames
    }()
    
    
    
}


