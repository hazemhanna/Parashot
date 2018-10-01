//
//  RestuarantView.swift
//  Parshot
//
//  Created by hazem on 9/9/18.
//  Copyright © 2018 hazem. All rights reserved.
//


import UIKit

class ConfirmOrderView : BaseCell{
    
    var textHeightConstraint: NSLayoutConstraint!

    
    
    override func setupViews() {
        
        addSubview(mainView)
        mainView.topAnchor.constraint(equalTo: topAnchor,constant : 10).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.2).isActive = true
        
       
        
        mainView.addSubview(resturantImage)
        resturantImage.topAnchor.constraint(equalTo: mainView.topAnchor).isActive = true
        resturantImage.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        resturantImage.widthAnchor.constraint(equalTo: mainView.widthAnchor).isActive = true
        resturantImage.heightAnchor.constraint(equalTo: mainView.heightAnchor,multiplier : 0.8).isActive = true
        
        /////// logoImage Back ground
        resturantImage.addSubview(logoImageBack)
        logoImageBack.topAnchor.constraint(equalTo: resturantImage.topAnchor).isActive = true
        logoImageBack.centerXAnchor.constraint(equalTo: resturantImage.centerXAnchor).isActive = true
        logoImageBack.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.3).isActive = true
        logoImageBack.heightAnchor.constraint(equalTo: mainView.heightAnchor,multiplier : 0.8).isActive = true
        
        
        
        logoImageBack.addSubview(logoImage)
        logoImage.centerYAnchor.constraint(equalTo: logoImageBack.centerYAnchor).isActive = true
        logoImage.centerXAnchor.constraint(equalTo: logoImageBack.centerXAnchor).isActive = true
        logoImage.widthAnchor.constraint(equalTo: logoImageBack.widthAnchor).isActive = true
        logoImage.heightAnchor.constraint(equalTo: logoImageBack.heightAnchor).isActive = true
        
        
        mainView.addSubview(resturanrName)
        resturanrName.topAnchor.constraint(equalTo: resturantImage.bottomAnchor,constant : 5).isActive = true
        resturanrName.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        
        
        addSubview(detailsTV)
        detailsTV.topAnchor.constraint(equalTo: mainView.bottomAnchor,constant : 2).isActive = true
        detailsTV.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        detailsTV.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.95).isActive = true
        detailsTV.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.1).isActive = true
        
        
        
        //////// location view
        addSubview(locationView)
        locationView.topAnchor.constraint(equalTo: detailsTV.bottomAnchor,constant : 20).isActive = true
        locationView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        locationView.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.95).isActive = true
        locationView.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.07).isActive = true
        
        
        locationView.addSubview(locationName)
        locationName.centerYAnchor.constraint(equalTo: locationView.centerYAnchor).isActive = true
        locationName.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        
        locationView.addSubview(locationImage)
        locationImage.rightAnchor.constraint(equalTo: rightAnchor,constant : -60).isActive = true
        locationImage.centerYAnchor.constraint(equalTo: locationView.centerYAnchor).isActive = true
        locationImage.widthAnchor.constraint(equalTo: locationView.widthAnchor,multiplier : 0.1).isActive = true
        locationImage.heightAnchor.constraint(equalTo:  locationImage.widthAnchor).isActive = true

        
        locationView.addSubview(locationarrow)
        locationarrow.leftAnchor.constraint(equalTo: leftAnchor,constant : 60).isActive = true
        locationarrow.centerYAnchor.constraint(equalTo: locationView.centerYAnchor).isActive = true
        locationarrow.widthAnchor.constraint(equalTo: locationView.widthAnchor,multiplier : 0.02).isActive = true
        locationarrow.heightAnchor.constraint(equalTo:  heightAnchor,multiplier : 0.02).isActive = true

        
        
        
        
        addSubview(TimeView)
        TimeView.topAnchor.constraint(equalTo: locationView.bottomAnchor,constant : 10).isActive = true
        TimeView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        TimeView.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.95).isActive = true
        TimeView.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.07).isActive = true
        
        
        TimeView.addSubview(TimeName)
        TimeName.centerYAnchor.constraint(equalTo: TimeView.centerYAnchor).isActive = true
        TimeName.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        
        TimeView.addSubview(TimeImage)
        TimeImage.rightAnchor.constraint(equalTo: rightAnchor,constant : -60).isActive = true
        TimeImage.centerYAnchor.constraint(equalTo: TimeView.centerYAnchor).isActive = true
        TimeImage.widthAnchor.constraint(equalTo: TimeView.widthAnchor,multiplier : 0.1).isActive = true
        TimeImage.heightAnchor.constraint(equalTo:  TimeImage.widthAnchor).isActive = true
        
        
        TimeView.addSubview(TimeArrow)
        TimeArrow.leftAnchor.constraint(equalTo: leftAnchor,constant : 60).isActive = true
        TimeArrow.centerYAnchor.constraint(equalTo: TimeView.centerYAnchor).isActive = true
        TimeArrow.widthAnchor.constraint(equalTo:  TimeView.widthAnchor,multiplier : 0.02).isActive = true
        TimeArrow.heightAnchor.constraint(equalTo:  heightAnchor,multiplier : 0.02).isActive = true
        
        
        
        
        
        
        addSubview(IamgeView)
        IamgeView.topAnchor.constraint(equalTo: TimeView.bottomAnchor,constant : 10).isActive = true
        IamgeView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        IamgeView.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.95).isActive = true
        IamgeView.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.07).isActive = true
        
        
        IamgeView.addSubview(cameraName)
        cameraName.centerYAnchor.constraint(equalTo: IamgeView.centerYAnchor).isActive = true
        cameraName.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        
        IamgeView.addSubview(CameraImage)
        CameraImage.rightAnchor.constraint(equalTo:  rightAnchor,constant : -60).isActive = true
        CameraImage.centerYAnchor.constraint(equalTo: IamgeView.centerYAnchor).isActive = true
        CameraImage.widthAnchor.constraint(equalTo: IamgeView.widthAnchor,multiplier : 0.1).isActive = true
        CameraImage.heightAnchor.constraint(equalTo:  CameraImage.widthAnchor).isActive = true
        
        
        IamgeView.addSubview(camerArrow)
        camerArrow.leftAnchor.constraint(equalTo: leftAnchor,constant : 60).isActive = true
        camerArrow.centerYAnchor.constraint(equalTo: IamgeView.centerYAnchor).isActive = true
        camerArrow.widthAnchor.constraint(equalTo:  IamgeView.widthAnchor,multiplier : 0.02).isActive = true
        camerArrow.heightAnchor.constraint(equalTo:  heightAnchor,multiplier : 0.02).isActive = true
        
        
        
        
        
        
        
        
        
        
        addSubview(message)
        message.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        message.topAnchor.constraint(equalTo: IamgeView.bottomAnchor, constant: 10).isActive = true
        message.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.95).isActive = true
        message.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.3).isActive = true
        //self.textHeightConstraint = message.heightAnchor.constraint(equalToConstant: 80)
       // self.textHeightConstraint.isActive = true
        
     
        
        ///////
        
        
    }
    
    let mainView:UIView = {
        let ci = UIView()
        ci.backgroundColor = UIColor.rgb(63, green: 6, blue: 47)
        ci.layer.cornerRadius = 20
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.layer.shadowColor = UIColor.black.cgColor
        ci.layer.shadowOffset = CGSize(width: -1, height: 2)
        ci.layer.shadowOpacity = 0.1
        ci.layer.shadowRadius = 10
        ci.layer.masksToBounds = false
        ci.clipsToBounds = false
        return ci
        
    }()
    
    
    
  
    
    
    
    let resturantImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "03022507099b18557cb6d8baaaaee876"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    
    let resturanrName :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.white
        var font = UIFont(name: "JFFlat-Regular", size: 18)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("pizz hut ", comment: "this is name")
        return NL
        
    }()
    
    
    let logoImageBack:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "Shape 130"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    let logoImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41449893_472464039905616_1850804499946405888_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    

    let detailsTV :UITextView = {
        let NL = UITextView()
        NL.textColor = UIColor.black
        NL.backgroundColor = UIColor.clear
        NL.textAlignment = .right
        var font = UIFont(name: "JFFlat-Regular", size: 9)
        NL.font = font
        NL.isEditable = false
        NL.isSelectable = false
        NL.isScrollEnabled = false
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" هو متجر متخصص فب يسا لبيتر عات وبيع اللبصات لمن لايبكم نت تواجد بضانك معانا ولازن تالاقفيب الاعل والافاقرب بلمن لنا  ", comment: "this is name")
        return NL
        
    }()
    ///////
    let locationView:UIView = {
        let ci = UIView()
        ci.backgroundColor = UIColor.rgb(214, green: 10, blue: 96)
        ci.layer.cornerRadius = 5
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    let locationImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41497301_1824003367694356_3849101535501877248_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    let locationName :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.white
        var font = UIFont(name: "JFFlat-Regular", size: 18)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" حدد مكان التوصيل   ", comment: "this is name")
        return NL
        
    }()
    let locationarrow :CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41393510_381842899017264_6044721716666564608_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    //////
    let TimeView:UIView = {
        let ci = UIView()
        ci.backgroundColor = UIColor.rgb(214, green: 10, blue: 96)
        ci.layer.cornerRadius = 5
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    let  TimeImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41575199_1373566192777190_3576293450607230976_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    let TimeName :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.white
        var font = UIFont(name: "JFFlat-Regular", size: 18)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" التوصيل خلال   ", comment: "this is name")
        return NL
        
    }()
    
    
    let TimeArrow :CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41393510_381842899017264_6044721716666564608_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    
    let IamgeView:UIView = {
        let ci = UIView()
        ci.backgroundColor = UIColor.rgb(214, green: 10, blue: 96)
        ci.layer.cornerRadius = 5
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    let CameraImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41461695_1977090842356749_8288516780758925312_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    let cameraName :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.white
        var font = UIFont(name: "JFFlat-Regular", size: 18)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" اضف صورة   ", comment: "this is name")
        return NL
        
    }()
    
    
    let camerArrow :CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41393510_381842899017264_6044721716666564608_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    let optionalName :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.white
        var font = UIFont(name: "JFFlat-Regular", size: 9)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("(اختيارد)", comment: "this is name")
        return NL
        
    }()
    


    let message :UITextView = {
        let NL = UITextView()
        NL.textColor = UIColor.rgb(155, green: 155, blue: 155)
        NL.backgroundColor = UIColor.clear
        var font = UIFont(name: "JFFlat-Regular", size: 9)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" اكتب هنا طلبك وتفاصيل الطلب ", comment: "this is name")
        NL.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        NL.layer.borderWidth = 1
        NL.textAlignment = .right
        NL.layer.cornerRadius = 7
        return NL
        
    }()

    
    
    
    ///////// clear uitextview when i write in it
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        
        self.message.text = ""
        
    }
    
    /////////// tow function to make textview dynamic height
//    
//    func textViewDidChange(_ textView: UITextView) {
//        self.adjustTextViewHeight()
//    }
//    
//    func adjustTextViewHeight() {
//        let fixedWidth = message.frame.size.width
//        let newSize = message.sizeThatFits(CGSize(width: fixedWidth, height: CGFloat.greatestFiniteMagnitude))
//        self.textHeightConstraint.constant = newSize.height
//        self.layoutIfNeeded()
//    }
    
 
}
