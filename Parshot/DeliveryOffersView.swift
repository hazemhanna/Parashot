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

class DeliveryOffersView: BaseCell,FloatRatingViewDelegate {
    override func setupViews() {
        
        addSubview(mainView)
        mainView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        
        
        
        mainView.addSubview(ImageView)
        ImageView.topAnchor.constraint(equalTo: mainView.topAnchor,constant : 10).isActive = true
        ImageView.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -10 ).isActive = true
        ImageView.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.25).isActive = true
        ImageView.heightAnchor.constraint(equalTo: ImageView.widthAnchor).isActive = true
        
        
        
        ImageView.addSubview(CaptenImage)
        CaptenImage.centerYAnchor.constraint(equalTo: ImageView.centerYAnchor).isActive = true
        CaptenImage.centerXAnchor.constraint(equalTo: ImageView.centerXAnchor).isActive = true
        CaptenImage.widthAnchor.constraint(equalTo: ImageView.widthAnchor, multiplier: 0.9).isActive = true
        CaptenImage.heightAnchor.constraint(equalTo: CaptenImage.widthAnchor).isActive = true
        self.CaptenImage.layer.cornerRadius = self.CaptenImage.frame.width/15
        self.CaptenImage.clipsToBounds = true
        
        
        ImageView.addSubview(VipImage)
        VipImage.topAnchor.constraint(equalTo: CaptenImage.topAnchor).isActive = true
        VipImage.rightAnchor.constraint(equalTo: CaptenImage.rightAnchor).isActive = true
        VipImage.widthAnchor.constraint(equalTo: CaptenImage.widthAnchor, multiplier: 0.25).isActive = true
        VipImage.heightAnchor.constraint(equalTo: VipImage.widthAnchor).isActive = true

        
        
        
        
        mainView.addSubview(floatRatingView)
        floatRatingView.topAnchor.constraint(equalTo: ImageView.bottomAnchor,constant:5).isActive = true
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
        
        
        
        
        mainView.addSubview(itemRateNum)
        itemRateNum.centerYAnchor.constraint(equalTo: floatRatingView.centerYAnchor).isActive = true
        itemRateNum.rightAnchor.constraint(equalTo: floatRatingView.leftAnchor,constant: -5).isActive = true
        
        
  
        mainView.addSubview(CommentCapten)
        CommentCapten.topAnchor.constraint(equalTo: floatRatingView.bottomAnchor,constant : 5).isActive = true
        CommentCapten.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -20 ).isActive = true
   
        
        
        ///// line under captin Comment
        mainView.addSubview(secondhorizantalLine)
        secondhorizantalLine.topAnchor.constraint(equalTo: CommentCapten.bottomAnchor).isActive = true
        secondhorizantalLine.rightAnchor.constraint(equalTo: CommentCapten.rightAnchor ).isActive = true
        secondhorizantalLine.widthAnchor.constraint(equalTo: CommentCapten.widthAnchor ).isActive = true
        secondhorizantalLine.heightAnchor.constraint(equalToConstant : 3).isActive = true
        
        
        mainView.addSubview(verticallLine)
        verticallLine.centerYAnchor.constraint(equalTo: mainView.centerYAnchor).isActive = true
        verticallLine.rightAnchor.constraint(equalTo: ImageView.leftAnchor,constant : -10 ).isActive = true
        verticallLine.widthAnchor.constraint(equalToConstant : 1 ).isActive = true
        verticallLine.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        
        /////// head line
        
        mainView.addSubview(CaptenName)
        CaptenName.topAnchor.constraint(equalTo: topAnchor, constant : 15 ).isActive = true
        CaptenName.rightAnchor.constraint(equalTo: verticallLine.leftAnchor, constant: -10).isActive = true
        
        mainView.addSubview(captenNameValue)
        captenNameValue.topAnchor.constraint(equalTo: topAnchor, constant : 15 ).isActive = true
        captenNameValue.rightAnchor.constraint(equalTo: CaptenName.leftAnchor).isActive = true
        
        mainView.addSubview(horizantalLine)
        horizantalLine.topAnchor.constraint(equalTo: CaptenName.bottomAnchor,constant : 20).isActive = true
        horizantalLine.rightAnchor.constraint(equalTo: verticallLine.leftAnchor ).isActive = true
        horizantalLine.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.64 ).isActive = true
        horizantalLine.heightAnchor.constraint(equalToConstant : 1).isActive = true
        
        
        mainView.addSubview(locationImage)
        locationImage.topAnchor.constraint(equalTo: horizantalLine.bottomAnchor,constant : 10).isActive = true
        locationImage.rightAnchor.constraint(equalTo: verticallLine.leftAnchor,constant : -20 ).isActive = true
        locationImage.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.05 ).isActive = true
        locationImage.heightAnchor.constraint(equalTo : locationImage.widthAnchor).isActive = true
        
  
        
        mainView.addSubview(PriceImage)
        PriceImage.topAnchor.constraint(equalTo: locationImage.bottomAnchor,constant : 10).isActive = true
        PriceImage.rightAnchor.constraint(equalTo: verticallLine.leftAnchor,constant : -20 ).isActive = true
        PriceImage.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.05 ).isActive = true
        PriceImage.heightAnchor.constraint(equalTo : locationImage.widthAnchor).isActive = true
        
        
        
        
        ////
        mainView.addSubview(locationValueLAbel)
        locationValueLAbel.centerYAnchor.constraint(equalTo: locationImage.centerYAnchor).isActive = true
        locationValueLAbel.rightAnchor.constraint(equalTo: locationImage.leftAnchor,constant : -10 ).isActive = true
        
        mainView.addSubview(PriceValueLabe)
        PriceValueLabe.centerYAnchor.constraint(equalTo: PriceImage.centerYAnchor).isActive = true
        PriceValueLabe.rightAnchor.constraint(equalTo: locationValueLAbel.rightAnchor ).isActive = true
        
        ///////////

        
        
        
        
        
        
        mainView.addSubview(DoneBtn)
        DoneBtn.bottomAnchor.constraint(equalTo: bottomAnchor,constant : -10  ).isActive = true
        DoneBtn.rightAnchor.constraint(equalTo: verticallLine.leftAnchor,constant : -50  ).isActive = true
        DoneBtn.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.25).isActive = true
        DoneBtn.heightAnchor.constraint(equalToConstant : 25).isActive = true
        
        
        
        
        
        
    }
    
    
    
    let  mainView :UIView = {
        let uv = UIView()
        uv.backgroundColor = .white
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        uv.layer.cornerRadius = 25
        return uv
    }()
    
    
    
    let  ImageView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.cornerRadius = 50
        return uv
    }()
    
    
    let CaptenImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41932690_632528493808802_2826969314135900160_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    
    let VipImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41991951_2379690958714217_3886301325289324544_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    
    
    let floatRatingView: FloatRatingView  = {
        let departnames = FloatRatingView()
        departnames.translatesAutoresizingMaskIntoConstraints = false
        return departnames
    }()
    
    
    
    
    let itemRateNum :UILabel = {
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
    
    
    let CaptenName :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.numberOfLines = 2
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" اسم الكابتن : ", comment: "this is name")
        return NL
        
    }()
  
    
    
    
    let captenNameValue :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.numberOfLines = 2
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("اسامة عبد المنعم", comment: "this is name")
        return NL
        
    }()
    
    
    
    let CommentCapten :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("تعليقات المندوب", comment: "this is name")
        return NL
        
    }()
    
    
    let  secondhorizantalLine  :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 0.5
        return uv
    }()
    
    
    let  horizantalLine  :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 0.5
        return uv
    }()
    
    
    
    
    

    let locationImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "paratrooper"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    let locationValueLAbel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.numberOfLines = 2
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" ٢٫٤ كم  ", comment: "this is name")
        return NL
        
    }()
    
    
    let PriceImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "coins"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    let PriceValueLabe :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.numberOfLines = 2
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" ٣٫٣ ر٫س", comment: "this is name")
        return NL
        
    }()
  
    
    
    let DoneBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor =  UIColor.rgb(235, green: 69, blue: 105)
        button.setTitle(NSLocalizedString(" موافق ", comment: "this is name"),for: .normal)
        button.addTarget(self, action: #selector(asd), for: .touchUpInside)
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        button.titleLabel?.font  = font!
        button.setTitleColor(UIColor.white, for: UIControlState.normal)  ///// how to give it black color and font
        button.layer.cornerRadius = 10
        return button
    }()
    
    @objc func asd (){
        
    }
    
    
    
    
}


