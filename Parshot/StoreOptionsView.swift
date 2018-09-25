//
//  DepartmentView.swift
//  Parshot
//
//  Created by hazem on 9/3/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit


class StoreOptionsView : BaseCell {
    
    
    override func setupViews() {
        addSubview(mainView)
        mainView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
    
    
        mainView.addSubview(StoreOPtionLabel)
        StoreOPtionLabel.topAnchor.constraint(equalTo: mainView.topAnchor,constant : 10).isActive = true
        StoreOPtionLabel.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -20).isActive = true
        StoreOPtionLabel.heightAnchor.constraint(equalTo:mainView.heightAnchor,multiplier : 0.06 ).isActive = true
        
        
        mainView.addSubview(horizantalLine)
        horizantalLine.topAnchor.constraint(equalTo: StoreOPtionLabel.bottomAnchor ,constant : 10).isActive = true
        horizantalLine.centerXAnchor.constraint(equalTo: mainView.centerXAnchor ).isActive = true
        horizantalLine.widthAnchor.constraint(equalTo: mainView.widthAnchor ).isActive = true
        horizantalLine.heightAnchor.constraint(equalToConstant : 1).isActive = true
        //////////////
        mainView.addSubview(receveOrdersnLabel)
        receveOrdersnLabel.topAnchor.constraint(equalTo: horizantalLine.bottomAnchor,constant : 10).isActive = true
        receveOrdersnLabel.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -10).isActive = true
        receveOrdersnLabel.heightAnchor.constraint(equalTo:mainView.heightAnchor,multiplier : 0.06 ).isActive = true

        
        mainView.addSubview(switchDemo2)
        switchDemo2.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 20).isActive = true
        switchDemo2.centerYAnchor.constraint(equalTo: receveOrdersnLabel.centerYAnchor).isActive = true
        
        
        mainView.addSubview(horizantalLine2)
        horizantalLine2.topAnchor.constraint(equalTo: receveOrdersnLabel.bottomAnchor ,constant : 10).isActive = true
        horizantalLine2.centerXAnchor.constraint(equalTo: mainView.centerXAnchor ).isActive = true
        horizantalLine2.widthAnchor.constraint(equalTo: mainView.widthAnchor ).isActive = true
        horizantalLine2.heightAnchor.constraint(equalToConstant : 1).isActive = true
        
        ////////////////
        mainView.addSubview(descoundLabel)
        descoundLabel.topAnchor.constraint(equalTo: horizantalLine2.bottomAnchor,constant : 10).isActive = true
        descoundLabel.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -10).isActive = true
        descoundLabel.heightAnchor.constraint(equalTo:mainView.heightAnchor,multiplier : 0.06 ).isActive = true

        mainView.addSubview(switchDemo3)
        switchDemo3.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 20).isActive = true
        switchDemo3.centerYAnchor.constraint(equalTo: descoundLabel.centerYAnchor).isActive = true
        
        
        
        mainView.addSubview(horizantalLine3)
        horizantalLine3.topAnchor.constraint(equalTo: descoundLabel.bottomAnchor ,constant : 10).isActive = true
        horizantalLine3.centerXAnchor.constraint(equalTo: mainView.centerXAnchor ).isActive = true
        horizantalLine3.widthAnchor.constraint(equalTo: mainView.widthAnchor ).isActive = true
        horizantalLine3.heightAnchor.constraint(equalToConstant : 1).isActive = true
        /////////////////
    
        mainView.addSubview(discoundCoponLabel)
        discoundCoponLabel.topAnchor.constraint(equalTo: horizantalLine3.bottomAnchor,constant : 10).isActive = true
        discoundCoponLabel.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -10).isActive = true
        discoundCoponLabel.heightAnchor.constraint(equalTo:mainView.heightAnchor,multiplier : 0.06 ).isActive = true

        
        mainView.addSubview(switchDemo4)
        switchDemo4.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 20).isActive = true
        switchDemo4.centerYAnchor.constraint(equalTo: discoundCoponLabel.centerYAnchor).isActive = true
        
        
        
        mainView.addSubview(horizantalLine4)
        horizantalLine4.topAnchor.constraint(equalTo: discoundCoponLabel.bottomAnchor ,constant : 10).isActive = true
        horizantalLine4.centerXAnchor.constraint(equalTo: mainView.centerXAnchor ).isActive = true
        horizantalLine4.widthAnchor.constraint(equalTo: mainView.widthAnchor ).isActive = true
        horizantalLine4.heightAnchor.constraint(equalToConstant : 1).isActive = true
        ///////////////////////////
        
        mainView.addSubview(deliveryLabel)
        deliveryLabel.topAnchor.constraint(equalTo: horizantalLine4.bottomAnchor,constant : 10).isActive = true
        deliveryLabel.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -10).isActive = true
        deliveryLabel.heightAnchor.constraint(equalTo:mainView.heightAnchor,multiplier : 0.06 ).isActive = true

        mainView.addSubview(switchDemo5)
        switchDemo5.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 20).isActive = true
        switchDemo5.centerYAnchor.constraint(equalTo: deliveryLabel.centerYAnchor).isActive = true
        
        
        
        
        mainView.addSubview(horizantalLine5)
        horizantalLine5.topAnchor.constraint(equalTo: deliveryLabel.bottomAnchor ,constant : 10).isActive = true
        horizantalLine5.centerXAnchor.constraint(equalTo: mainView.centerXAnchor ).isActive = true
        horizantalLine5.widthAnchor.constraint(equalTo: mainView.widthAnchor ).isActive = true
        horizantalLine5.heightAnchor.constraint(equalToConstant : 1).isActive = true
        ///////////////////
        mainView.addSubview(minumumOrderLabel)
        minumumOrderLabel.topAnchor.constraint(equalTo: horizantalLine5.bottomAnchor,constant : 10).isActive = true
        minumumOrderLabel.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -10).isActive = true
        minumumOrderLabel.heightAnchor.constraint(equalTo:mainView.heightAnchor,multiplier : 0.06 ).isActive = true

        
        mainView.addSubview(minumumOrderTF)
        minumumOrderTF.leftAnchor.constraint(equalTo: mainView.leftAnchor,constant : 5).isActive = true
        minumumOrderTF.centerYAnchor.constraint(equalTo: minumumOrderLabel.centerYAnchor).isActive = true
        minumumOrderTF.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.2 ).isActive = true
        minumumOrderTF.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.1).isActive = true
        
        mainView.addSubview(horizantalLine6)
        horizantalLine6.topAnchor.constraint(equalTo: minumumOrderLabel.bottomAnchor ,constant : 10).isActive = true
        horizantalLine6.centerXAnchor.constraint(equalTo: mainView.centerXAnchor ).isActive = true
        horizantalLine6.widthAnchor.constraint(equalTo: mainView.widthAnchor ).isActive = true
        horizantalLine6.heightAnchor.constraint(equalToConstant : 1).isActive = true
        
        
        mainView.addSubview(TaxesLabel)
        TaxesLabel.topAnchor.constraint(equalTo: horizantalLine6.bottomAnchor,constant : 10).isActive = true
        TaxesLabel.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -10).isActive = true
        TaxesLabel.heightAnchor.constraint(equalTo:mainView.heightAnchor,multiplier : 0.06 ).isActive = true

        
        
        mainView.addSubview(TaxesTf)
        TaxesTf.leftAnchor.constraint(equalTo: mainView.leftAnchor,constant : 5).isActive = true
        TaxesTf.centerYAnchor.constraint(equalTo: TaxesLabel.centerYAnchor).isActive = true
        TaxesTf.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.2 ).isActive = true
        TaxesTf.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.1).isActive = true
        
        
        
        
        
        
        
        
        
    
    
    
    }
    
    let  mainView :UIView = {
        let ci = UIView()
        ci.backgroundColor = UIColor.white
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        ci.layer.borderWidth = 1
        return ci
        
    }()
    
    let StoreOPtionLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" خيارات المتجر ", comment: "this is name")
        return NL
        
    }()
    
    
    let  horizantalLine  :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 0.5
        return uv
    }()
    
    ////////
    
    let receveOrdersnLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" استقبال الطلبات", comment: "this is name")
        return NL
        
    }()
    let switchDemo2 : UISwitch = {
        let Demo = UISwitch()
        Demo.isOn = true
        Demo.setOn(true, animated: false)
        Demo.addTarget(self, action: #selector(switchValueDidChange), for: .touchUpInside)
        Demo.translatesAutoresizingMaskIntoConstraints = false
        Demo.onTintColor = UIColor.rgb(84, green: 0, blue: 121)
        Demo.tintColor = UIColor.rgb(84, green: 0, blue: 121)
        return Demo
    }()
    @objc func switchValueDidChange(sender:UISwitch!)
    
    {
        if (sender.isOn == true){
        
            print ("a7a")
    
        }else{
            print ("a7a")
        }
    
    }
    
    let  horizantalLine2  :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 0.5
        return uv
    }()
   ////////////
    let descoundLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("  تفعيل التخفيضات", comment: "this is name")
        return NL
        
    }()
    let switchDemo3 : UISwitch = {
        let Demo = UISwitch()
        Demo.isOn = true
        Demo.setOn(true, animated: false)
        Demo.addTarget(self, action: #selector(switchValueDidChange3), for: .touchUpInside)
        Demo.translatesAutoresizingMaskIntoConstraints = false
        Demo.onTintColor = UIColor.rgb(84, green: 0, blue: 121)
        Demo.tintColor = UIColor.rgb(84, green: 0, blue: 121)
        return Demo
    }()
    @objc func switchValueDidChange3(sender:UISwitch!)
    {
        if (sender.isOn == true){
            
            print ("a7a")
            
        }else{
            print ("a7a")
        }
        
    }
    
    let  horizantalLine3  :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 0.5
        return uv
    }()
    
   ////////////
    
    
    let discoundCoponLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("  تفعيل كوبونات التخفيض", comment: "this is name")
        return NL
        
    }()
    let switchDemo4 : UISwitch = {
        let Demo = UISwitch()
        Demo.isOn = true
        Demo.setOn(true, animated: false)
        Demo.addTarget(self, action: #selector(switchValueDidChange4), for: .touchUpInside)
        Demo.translatesAutoresizingMaskIntoConstraints = false
        Demo.onTintColor = UIColor.rgb(84, green: 0, blue: 121)
        Demo.tintColor = UIColor.rgb(84, green: 0, blue: 121)
        return Demo
    }()
    @objc func switchValueDidChange4(sender:UISwitch!)
    {
        if (sender.isOn == true){
            
            print ("a7a")
            
        }else{
            print ("a7a")
        }
        
    }
    
    let  horizantalLine4  :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 0.5
        return uv
    }()
    /////////////////
    
    let deliveryLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("تحميل قيمة التوصيل", comment: "this is name")
        return NL
        
    }()
    let switchDemo5 : UISwitch = {
        let Demo = UISwitch()
        Demo.isOn = true
        Demo.setOn(true, animated: false)
        Demo.addTarget(self, action: #selector(switchValueDidChange5), for: .touchUpInside)
        Demo.translatesAutoresizingMaskIntoConstraints = false
        Demo.onTintColor = UIColor.rgb(84, green: 0, blue: 121)
        Demo.tintColor = UIColor.rgb(84, green: 0, blue: 121)
        return Demo
    }()
    @objc func switchValueDidChange5(sender:UISwitch!)
    {
        if (sender.isOn == true){
            
            print ("a7a")
            
        }else{
            print ("a7a")
        }
        
    }
    let  horizantalLine5  :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 0.5
        return uv
    }()
 
    let minumumOrderLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" الحد الادني للطب", comment: "this is name")
        return NL
        
    }()
   
    let minumumOrderTF :UITextField = {
        let tf = UITextField()
        tf.textColor = UIColor.rgb(48, green: 39, blue: 133)
        tf.attributedPlaceholder = NSAttributedString(string:NSLocalizedString("", comment: "this is name"),
                                                      
                                                      attributes:[NSForegroundColorAttributeName: UIColor.rgb(48, green: 39, blue: 133)])
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        tf.font = font
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor.clear
        tf.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        tf.layer.borderWidth = 2
        tf.layer.cornerRadius = 7

        return tf
        
    }()

    
    let  horizantalLine6  :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 0.5
        return uv
    }()
    
    
    /////////////
    let TaxesLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" نسبة الضراب ", comment: "this is name")
        return NL
        
    }()
    let TaxesTf :UITextField = {
        let tf = UITextField()
        tf.textColor = UIColor.rgb(48, green: 39, blue: 133)
        tf.attributedPlaceholder = NSAttributedString(string:NSLocalizedString(" ", comment: "this is name"),
                                                      
                                                      attributes:[NSForegroundColorAttributeName: UIColor.rgb(48, green: 39, blue: 133)])
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        tf.font = font
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor.clear
        tf.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        tf.layer.borderWidth = 2
        tf.layer.cornerRadius = 7
        return tf
        
    }()


    
}
