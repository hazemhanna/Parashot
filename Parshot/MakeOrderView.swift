//
//  RestuarantView.swift
//  Parshot
//
//  Created by hazem on 9/9/18.
//  Copyright © 2018 hazem. All rights reserved.
//


import UIKit

class MakeOrderView : BaseCell{
    
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
        logoImageBack.heightAnchor.constraint(equalTo: mainView.heightAnchor,multiplier : 0.7).isActive = true
        
        
        
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
        ///////
        
        
        addSubview(rightarrowImage)
        rightarrowImage.topAnchor.constraint(equalTo: detailsTV.bottomAnchor).isActive = true
        rightarrowImage.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        rightarrowImage.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.1).isActive = true
        rightarrowImage.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.03).isActive = true
        
        addSubview(leftarrow)
        leftarrow.topAnchor.constraint(equalTo: detailsTV.bottomAnchor).isActive = true
        leftarrow.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        leftarrow.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.1).isActive = true
        leftarrow.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.03).isActive = true
        
        addSubview(chooseTimeLabe)
        chooseTimeLabe.centerYAnchor.constraint(equalTo: rightarrowImage.centerYAnchor).isActive = true
        chooseTimeLabe.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        
        
        addSubview(TimeView)
        TimeView.topAnchor.constraint(equalTo: chooseTimeLabe.bottomAnchor,constant : 30).isActive = true
        TimeView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        TimeView.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.8).isActive = true
        TimeView.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.07).isActive = true
        
        
        TimeView.addSubview(TimeName)
        TimeName.rightAnchor.constraint(equalTo: TimeView.rightAnchor,constant : -10).isActive = true
        TimeName.centerYAnchor.constraint(equalTo: TimeView.centerYAnchor).isActive = true
        
        
        
        TimeView.addSubview(verticalView)
        verticalView.rightAnchor.constraint(equalTo: TimeName.leftAnchor,constant : -20).isActive = true
        verticalView.centerYAnchor.constraint(equalTo: TimeView.centerYAnchor).isActive = true
        verticalView.widthAnchor.constraint(equalToConstant: 2 ).isActive = true
        verticalView.heightAnchor.constraint(equalTo: TimeView.heightAnchor,multiplier : 0.8).isActive = true

        
      
        
        TimeView.addSubview(TimeArrow)
        TimeArrow.leftAnchor.constraint(equalTo: TimeView.leftAnchor,constant : 10).isActive = true
        TimeArrow.centerYAnchor.constraint(equalTo: TimeView.centerYAnchor).isActive = true
        TimeArrow.widthAnchor.constraint(equalTo:  TimeView.widthAnchor,multiplier : 0.05).isActive = true
        TimeArrow.heightAnchor.constraint(equalTo:  heightAnchor,multiplier : 0.02).isActive = true
    
        addSubview(dateView)
        dateView.topAnchor.constraint(equalTo: TimeView.bottomAnchor,constant : 10).isActive = true
        dateView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        dateView.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.8).isActive = true
        dateView.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.07).isActive = true
        
        
        dateView.addSubview(datelabel)
        datelabel.rightAnchor.constraint(equalTo: dateView.rightAnchor , constant : -10).isActive = true
        datelabel.centerYAnchor.constraint(equalTo: dateView.centerYAnchor).isActive = true

        
        dateView.addSubview(vertical2View)
        vertical2View.rightAnchor.constraint(equalTo: TimeName.leftAnchor,constant : -20).isActive = true
        vertical2View.centerYAnchor.constraint(equalTo: dateView.centerYAnchor).isActive = true
        vertical2View.widthAnchor.constraint(equalToConstant: 2 ).isActive = true
        vertical2View.heightAnchor.constraint(equalTo:  dateView.heightAnchor,multiplier : 0.8).isActive = true
    
        
        dateView.addSubview(secondDatelabel)
        secondDatelabel.rightAnchor.constraint(equalTo: vertical2View.leftAnchor,constant : -5).isActive = true
        secondDatelabel.centerYAnchor.constraint(equalTo: dateView.centerYAnchor).isActive = true
        
        
        dateView.addSubview(dateArrow)
        dateArrow.leftAnchor.constraint(equalTo: dateView.leftAnchor,constant : 10).isActive = true
        dateArrow.centerYAnchor.constraint(equalTo: dateView.centerYAnchor).isActive = true
        dateArrow.widthAnchor.constraint(equalTo:  dateView.widthAnchor,multiplier : 0.05).isActive = true
        dateArrow.heightAnchor.constraint(equalTo:  heightAnchor,multiplier : 0.02).isActive = true
        
        addSubview(message)
        message.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        message.topAnchor.constraint(equalTo: dateView.bottomAnchor, constant: 10).isActive = true
        message.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.95).isActive = true
        message.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.35).isActive = true
        
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
    
    
    let  rightarrowImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "hazem"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    let chooseTimeLabe :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" اختر الوقت المناسب لك لتوصيل الطلبية", comment: "this is name")
        return NL
        
    }()
    let leftarrow :CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "Composed-layer@1X (2)@3x٢"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()

    
    //////
    let TimeView:UIView = {
        let ci = UIView()
        ci.backgroundColor = UIColor.clear
        ci.layer.cornerRadius = 15
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        ci.layer.borderWidth = 1
        
        return ci
        
    }()
    
    
    
    
    let TimeName :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.rgb(214, green: 15, blue: 99)
        var font = UIFont(name: "JFFlat-Regular", size: 18)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" الوقت", comment: "this is name")
        return NL
        
    }()
    
    let verticalView:UIView = {
        let ci = UIView()
        ci.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    let vertical2View:UIView = {
        let ci = UIView()
        ci.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    let TimeArrow :CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41517501_1893287914120445_4872002070682533888_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    
    let dateView:UIView = {
        let ci = UIView()
        ci.backgroundColor = UIColor.clear
        ci.layer.cornerRadius = 15
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        ci.layer.borderWidth = 1
        return ci
        
    }()
    
    
 
    
    let datelabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.rgb(214, green: 15, blue: 99)
        var font = UIFont(name: "JFFlat-Regular", size: 18)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("  التاريخ ", comment: "this is name")
        return NL
        
    }()
    
    
    
    let secondDatelabel  :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.rgb(155, green: 155, blue: 155)
        var font = UIFont(name: "JFFlat-Regular", size: 9)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("اذا كنت تريد الطلب اليوم لا تغير التاريخ", comment: "this is name")
        return NL
        
    }()
    
    let dateArrow :CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41517501_1893287914120445_4872002070682533888_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
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
