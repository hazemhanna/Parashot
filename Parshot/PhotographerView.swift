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

class PhotographerView: BaseCell,FloatRatingViewDelegate {
   
    override func setupViews() {
        
        addSubview(mainView)
        mainView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        mainView.addSubview(PhotographerImage)
        PhotographerImage.topAnchor.constraint(equalTo: mainView.topAnchor,constant : 20).isActive = true
        PhotographerImage.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -10 ).isActive = true
        PhotographerImage.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.3).isActive = true
        PhotographerImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        
        
        
        
        mainView.addSubview(floatRatingView)
        floatRatingView.topAnchor.constraint(equalTo: PhotographerImage.bottomAnchor,constant:10).isActive = true
        floatRatingView.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant:-20).isActive = true
        floatRatingView.heightAnchor.constraint(equalToConstant: 15).isActive = true
        floatRatingView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        floatRatingView.editable = false
        floatRatingView.delegate = self
        floatRatingView.contentMode = UIViewContentMode.scaleAspectFit
        floatRatingView.type = .halfRatings
        floatRatingView.fullImage = UIImage(named:"star98")
        floatRatingView.emptyImage = UIImage(named:"emptystar")
        floatRatingView.rating = 5.0
        
        
        
        
        mainView.addSubview(PhotographerRateNum)
        PhotographerRateNum.centerYAnchor.constraint(equalTo: floatRatingView.centerYAnchor).isActive = true
        PhotographerRateNum.rightAnchor.constraint(equalTo: floatRatingView.leftAnchor,constant: -5).isActive = true
        
        
        
        mainView.addSubview(verticallLine)
        verticallLine.centerYAnchor.constraint(equalTo: mainView.centerYAnchor).isActive = true
        verticallLine.rightAnchor.constraint(equalTo: PhotographerImage.leftAnchor,constant : -10 ).isActive = true
        verticallLine.widthAnchor.constraint(equalToConstant : 1 ).isActive = true
        verticallLine.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        
        /////// head line
        
        mainView.addSubview(PhotographerName)
        PhotographerName.topAnchor.constraint(equalTo: topAnchor, constant : 10 ).isActive = true
        PhotographerName.rightAnchor.constraint(equalTo: verticallLine.leftAnchor, constant: -10).isActive = true
        
        mainView.addSubview(PhotographerNameValue)
        PhotographerNameValue.topAnchor.constraint(equalTo: topAnchor, constant : 10 ).isActive = true
        PhotographerNameValue.rightAnchor.constraint(equalTo: PhotographerName.leftAnchor).isActive = true
        
        
        
        
        
        mainView.addSubview(PhotographerDetails)
        PhotographerDetails.topAnchor.constraint(equalTo: PhotographerName.bottomAnchor,constant : 10).isActive = true
        PhotographerDetails.rightAnchor.constraint(equalTo: verticallLine.leftAnchor ).isActive = true
        PhotographerDetails.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.64 ).isActive = true
        PhotographerDetails.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.3).isActive = true
        PhotographerDetails.textAlignment = .center
        
        
        mainView.addSubview(horizantalLine)
        horizantalLine.topAnchor.constraint(equalTo: PhotographerDetails.bottomAnchor,constant : 15).isActive = true
        horizantalLine.rightAnchor.constraint(equalTo: verticallLine.leftAnchor ).isActive = true
        horizantalLine.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.64 ).isActive = true
        horizantalLine.heightAnchor.constraint(equalToConstant : 1).isActive = true
        ///////
        
        
        mainView.addSubview(photoNum)
        photoNum.topAnchor.constraint(equalTo: horizantalLine.bottomAnchor,constant : 10).isActive = true
        photoNum.rightAnchor.constraint(equalTo: verticallLine.rightAnchor,constant : -10 ).isActive = true
        
        mainView.addSubview(photoNumValue)
        photoNumValue.rightAnchor.constraint(equalTo: photoNum.leftAnchor ).isActive = true
        photoNumValue.centerYAnchor.constraint(equalTo: photoNum.centerYAnchor).isActive = true
        

        
        
        
        
        mainView.addSubview(detailsBtn)
        detailsBtn.leftAnchor.constraint(equalTo: leftAnchor,constant : 10 ).isActive = true
        detailsBtn.centerYAnchor.constraint(equalTo: photoNumValue.centerYAnchor).isActive = true
        detailsBtn.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.2).isActive = true
        detailsBtn.heightAnchor.constraint(equalToConstant : 20).isActive = true
        
        

    }
    
    
    
    let  mainView :UIView = {
        let uv = UIView()
        uv.backgroundColor = .white
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        uv.layer.cornerRadius = 15
        return uv
    }()
    
    
    
    let PhotographerImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "42255710_2197455850512650_5565562421956837376_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    let floatRatingView: FloatRatingView  = {
        let departnames = FloatRatingView()
        departnames.translatesAutoresizingMaskIntoConstraints = false
        return departnames
    }()
    
    
    
    
    let PhotographerRateNum :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.lightGray
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("(230)", comment: "this is name")
        return NL
        
    }()
    


    
    
    let  verticallLine :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 0.5
        return uv
    }()
    
    
    let PhotographerName :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.numberOfLines = 2
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" اسم المصور : ", comment: "this is name")
        return NL
        
    }()
    
    
    
    
    
    let PhotographerNameValue :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.numberOfLines = 2
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" حازم حنا ميخا", comment: "this is name")
        return NL
        
    }()
    
    
    let PhotographerDetails :UITextView  = {
        let NL = UITextView()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        NL.font = font
        //NL.numberOfLines = 3
        NL.isEditable = false
        NL.isSelectable = false
        NL.isScrollEnabled = false
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" نبذة مختصرة عن المصور عد الصور وعر المصوريت ا نالتن  الااابا ابا", comment: "this is name")
        return NL
        
    }()
    
    
    
    
    
    let photoNum:UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("عدد الصور:", comment: "this is name")
        return NL
        
    }()
    
    
    let photoNumValue :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("450", comment: "this is name")
        return NL
        
    }()
    
    
 
    let detailsBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.rgb(235, green: 69, blue: 105)
        button.setTitle(NSLocalizedString(" تفاصيل ", comment: "this is name"),for: .normal)
        button.addTarget(self, action: #selector(asd), for: .touchUpInside)
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        button.titleLabel?.font  = font!
        button.setTitleColor(UIColor.white, for: UIControlState.normal)  ///// how to give it black color and font
        button.layer.cornerRadius = 10
        return button
    }()
    
    @objc func asd (){
        
    }
    let  horizantalLine  :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 0.5
        return uv
    }()
    
    


    
    
}


