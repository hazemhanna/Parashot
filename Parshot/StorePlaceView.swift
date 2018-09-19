//
//  DepartmentView.swift
//  Parshot
//
//  Created by hazem on 9/3/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit
import RichEditorView


class StorePlaceView : BaseCell {
    
    var controller : StoreSettingController?

    
       override func setupViews() {
      
        addSubview(mainView)
        mainView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
       mainView.isUserInteractionEnabled = false

        mainView.addSubview(StoreLabel)
        StoreLabel.topAnchor.constraint(equalTo: mainView.topAnchor,constant : 10).isActive = true
        StoreLabel.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -10).isActive = true
        
        mainView.addSubview(horizantalLine)
        horizantalLine.topAnchor.constraint(equalTo: StoreLabel.bottomAnchor ,constant : 10).isActive = true
        horizantalLine.centerXAnchor.constraint(equalTo: mainView.centerXAnchor ).isActive = true
        horizantalLine.widthAnchor.constraint(equalTo: mainView.widthAnchor ).isActive = true
        horizantalLine.heightAnchor.constraint(equalToConstant : 1).isActive = true
        
        
        addSubview(circleView)
        circleView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        circleView.widthAnchor.constraint(equalTo:  widthAnchor,multiplier:0.15).isActive = true
        circleView.topAnchor.constraint(equalTo: horizantalLine.bottomAnchor,constant : 10 ).isActive = true
        circleView.heightAnchor.constraint(equalTo: circleView.widthAnchor).isActive = true
        circleView.isUserInteractionEnabled = false
        
        addSubview(IconImage)
        IconImage.centerXAnchor.constraint(equalTo: circleView.centerXAnchor).isActive = true
        IconImage.widthAnchor.constraint(equalTo: circleView.widthAnchor,multiplier : 0.8).isActive = true
        IconImage.centerYAnchor.constraint(equalTo:circleView.centerYAnchor).isActive = true
        IconImage.heightAnchor.constraint(equalTo: IconImage.widthAnchor).isActive = true
        self.IconImage.layer.cornerRadius = self.IconImage.frame.width/15
        self.IconImage.clipsToBounds = true
        IconImage.isUserInteractionEnabled = true

        
        
        
        mainView.addSubview(StoreView)
        StoreView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        StoreView.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.9).isActive = true
        StoreView.topAnchor.constraint(equalTo:circleView.bottomAnchor,constant : 10).isActive = true
        StoreView.heightAnchor.constraint(equalToConstant : 20).isActive = true
    
        StoreView.addSubview(StoreImage)
        StoreImage.rightAnchor.constraint(equalTo: StoreView.rightAnchor,constant : -10).isActive = true
        StoreImage.widthAnchor.constraint(equalTo: StoreView.widthAnchor,multiplier : 0.05).isActive = true
        StoreImage.centerYAnchor.constraint(equalTo:StoreView.centerYAnchor).isActive = true
        StoreImage.heightAnchor.constraint(equalTo: StoreImage.widthAnchor).isActive = true
        
        StoreView.addSubview(StorNametTF)
        StorNametTF.rightAnchor.constraint(equalTo: StoreImage.leftAnchor,constant : -10).isActive = true
        StorNametTF.widthAnchor.constraint(equalTo: StoreView.widthAnchor,multiplier : 0.7).isActive = true
        StorNametTF.centerYAnchor.constraint(equalTo:StoreView.centerYAnchor).isActive = true
        StorNametTF.heightAnchor.constraint(equalToConstant : 20).isActive = true
        StorNametTF.textAlignment = .right
    
        mainView.addSubview(toolbar)
        toolbar.topAnchor.constraint(equalTo: StoreView.bottomAnchor,constant :30).isActive = true
        toolbar.centerXAnchor.constraint(equalTo: mainView.centerXAnchor ).isActive = true
        toolbar.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.9).isActive = true
        toolbar.heightAnchor.constraint(equalTo : mainView.heightAnchor,multiplier : 0.1).isActive = true
        toolbar.options = RichEditorDefaultOption.all
        toolbar.editor = productDescription
        
        mainView.addSubview(textiew)
        textiew.topAnchor.constraint(equalTo: toolbar.bottomAnchor).isActive = true
        textiew.centerXAnchor.constraint(equalTo: mainView.centerXAnchor ).isActive = true
        textiew.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.9).isActive = true
        textiew.heightAnchor.constraint(equalTo : mainView.heightAnchor,multiplier : 0.3).isActive = true
        ///////// product description text view
        textiew.addSubview(productDescription)
        productDescription.centerYAnchor.constraint(equalTo: textiew.centerYAnchor).isActive = true
        productDescription.centerXAnchor.constraint(equalTo: textiew.centerXAnchor ).isActive = true
        productDescription.widthAnchor.constraint(equalTo: textiew.widthAnchor).isActive = true
        productDescription.heightAnchor.constraint(equalTo : textiew.heightAnchor).isActive = true
        productDescription.bold()
        productDescription.italic()
    
    
        mainView.addSubview(DescribeStorelabel)
        DescribeStorelabel.bottomAnchor.constraint(equalTo: toolbar.topAnchor,constant : -5).isActive = true
        DescribeStorelabel.rightAnchor.constraint(equalTo: toolbar.rightAnchor ).isActive = true
        //////////// location view
        mainView.addSubview(StorePlaceView)
        StorePlaceView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        StorePlaceView.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.9).isActive = true
        StorePlaceView.topAnchor.constraint(equalTo:textiew.bottomAnchor,constant : 10).isActive = true
        StorePlaceView.heightAnchor.constraint(equalToConstant : 20).isActive = true
    
        StorePlaceView.addSubview(StorePlceImage)
        StorePlceImage.rightAnchor.constraint(equalTo: StorePlaceView.rightAnchor,constant : -10).isActive = true
        StorePlceImage.widthAnchor.constraint(equalTo: StorePlaceView.widthAnchor,multiplier : 0.05).isActive = true
        StorePlceImage.centerYAnchor.constraint(equalTo:StorePlaceView.centerYAnchor).isActive = true
        StorePlceImage.heightAnchor.constraint(equalTo: StorePlaceView.heightAnchor,multiplier : 0.8).isActive = true
        
        //StorePlceImage
        
        StorePlaceView.addSubview(StorePlacelabel)
        StorePlacelabel.rightAnchor.constraint(equalTo: StorePlceImage.leftAnchor,constant : -10).isActive = true
        StorePlacelabel.centerYAnchor.constraint(equalTo: StorePlaceView.centerYAnchor).isActive = true
 
        
        StorePlaceView.addSubview(arrowImage)
        arrowImage.leftAnchor.constraint(equalTo: StorePlaceView.leftAnchor,constant : 10).isActive = true
        arrowImage.widthAnchor.constraint(equalTo: StorePlaceView.widthAnchor,multiplier : 0.04).isActive = true
        arrowImage.centerYAnchor.constraint(equalTo:StorePlaceView.centerYAnchor).isActive = true
        arrowImage.heightAnchor.constraint(equalTo: StorePlaceView.heightAnchor,multiplier : 0.6).isActive = true
    
        IconImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(SwitchToImagePicker)))
        IconImage.isUserInteractionEnabled = true
    
    
    }
    
    func SwitchToImagePicker (){
        
    controller?.SwitchToImagePicker()
    
    }
    
    
    
    let  mainView :UIView = {
        let ci = UIView()
        ci.backgroundColor = UIColor.white
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        ci.layer.borderWidth = 1
        return ci
        
    }()
    
    let StoreLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" المتجر ", comment: "this is name")
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
    
    
    let  circleView :UIView = {
        let uv = UIView()
        uv.backgroundColor =  UIColor.rgb(230, green: 234, blue: 237)
        uv.layer.cornerRadius = 25
        uv.translatesAutoresizingMaskIntoConstraints = false
        return uv
    }()
    
    
    
    let  IconImage :UIImageView = {
        let ci = UIImageView(image:#imageLiteral(resourceName: "photo (3)"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    let StoreView :UIView = {
        let ci = UIView()
        ci.backgroundColor = UIColor.white
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        ci.layer.borderWidth = 1
        return ci
        
    }()

    
    
    let StorNametTF :UITextField = {
        let tf = UITextField()
        tf.textColor = UIColor.rgb(48, green: 39, blue: 133)
        tf.attributedPlaceholder = NSAttributedString(string:NSLocalizedString(" اسم المتجر ", comment: "this is name"),
                                                      
                                                      attributes:[NSForegroundColorAttributeName: UIColor.rgb(48, green: 39, blue: 133)])
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        tf.font = font
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor.clear
        return tf
        
    }()


   

    let  StoreImage :UIImageView = {
        let ci = UIImageView(image:#imageLiteral(resourceName: "photo (3)"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()

    
    let DescribeStorelabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("وصف المتجر ", comment: "this is name")
        return NL
        
    }()
    
    let  textiew :UIView = {
        let uv = UIView()
        uv.backgroundColor = .white
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        uv.layer.cornerRadius = 3
        return uv
    }()
    //////////////  product Description
    let productDescription : RichEditorView = {
        let tf = RichEditorView()
        tf.tintColor = UIColor.rgb(48, green: 39, blue: 133)
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    
    let toolbar : RichEditorToolbar = {
        let tb = RichEditorToolbar()
        tb.translatesAutoresizingMaskIntoConstraints = false
        return tb
        
    }()

/////////////
 
    let StorePlaceView :UIView = {
        let ci = UIView()
        ci.backgroundColor = UIColor.white
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        ci.layer.borderWidth = 1
        return ci
        
    }()
    
    
    
    let StorePlacelabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("مكان المتجر ", comment: "this is name")
        return NL
        
    }()


    
    let  StorePlceImage :UIImageView = {
        let ci = UIImageView(image:#imageLiteral(resourceName: "location"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()


    let  arrowImage :UIImageView = {
        let ci = UIImageView(image:#imageLiteral(resourceName: "chevron left"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()

}
