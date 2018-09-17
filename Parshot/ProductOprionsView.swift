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
import RichEditorView


class ProductOprionsView: BaseCell,FloatRatingViewDelegate {
    
    
    override func setupViews() {
        
        addSubview(mainView)
        mainView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        /////
        
        mainView.addSubview(ProductDescriptionLabel)
        ProductDescriptionLabel.topAnchor.constraint(equalTo: topAnchor,constant : 10).isActive = true
        ProductDescriptionLabel.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -10).isActive = true
        
        
        mainView.addSubview(horizantalLine)
        horizantalLine.topAnchor.constraint(equalTo: ProductDescriptionLabel.bottomAnchor,constant : 5).isActive = true
        horizantalLine.centerXAnchor.constraint(equalTo: mainView.centerXAnchor ).isActive = true
        horizantalLine.widthAnchor.constraint(equalTo: mainView.widthAnchor ).isActive = true
        horizantalLine.heightAnchor.constraint(equalToConstant : 1).isActive = true
   
        ///////
        mainView.addSubview(fView)
        fView.topAnchor.constraint(equalTo: horizantalLine.bottomAnchor,constant : 5).isActive = true
        fView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor ).isActive = true
        fView.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.9).isActive = true
        fView.heightAnchor.constraint(equalToConstant : 30).isActive = true
    
        fView.addSubview(pruductNameImage)
        pruductNameImage.centerYAnchor.constraint(equalTo: fView.centerYAnchor).isActive = true
        pruductNameImage.rightAnchor.constraint(equalTo: fView.rightAnchor,constant : -5 ).isActive = true
        pruductNameImage.widthAnchor.constraint(equalTo: fView.widthAnchor,multiplier : 0.05).isActive = true
        pruductNameImage.heightAnchor.constraint(equalTo :  pruductNameImage.widthAnchor).isActive = true
         //////
        fView.addSubview(productNameText)
        productNameText.centerYAnchor.constraint(equalTo: fView.centerYAnchor).isActive = true
        productNameText.rightAnchor.constraint(equalTo: pruductNameImage.leftAnchor,constant : -5 ).isActive = true
        productNameText.widthAnchor.constraint(equalTo: fView.widthAnchor,multiplier : 0.9).isActive = true
        productNameText.heightAnchor.constraint(equalToConstant : 30).isActive = true
        /////
        
        
        
        
        mainView.addSubview(sView)
        sView.topAnchor.constraint(equalTo: fView.bottomAnchor,constant : 5).isActive = true
        sView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor ).isActive = true
        sView.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.9).isActive = true
        sView.heightAnchor.constraint(equalToConstant : 30).isActive = true
        
        fView.addSubview(pruductamountImage)
        pruductamountImage.centerYAnchor.constraint(equalTo: sView.centerYAnchor).isActive = true
        pruductamountImage.rightAnchor.constraint(equalTo: sView.rightAnchor,constant : -5 ).isActive = true
        pruductamountImage.widthAnchor.constraint(equalTo: sView.widthAnchor,multiplier : 0.05).isActive = true
        pruductamountImage.heightAnchor.constraint(equalTo :  pruductamountImage.widthAnchor).isActive = true
        //////
        sView.addSubview(productAmountText)
        productAmountText.centerYAnchor.constraint(equalTo: sView.centerYAnchor).isActive = true
        productAmountText.rightAnchor.constraint(equalTo: pruductNameImage.leftAnchor,constant : -5 ).isActive = true
        productAmountText.widthAnchor.constraint(equalTo: sView.widthAnchor,multiplier : 0.9).isActive = true
        productAmountText.heightAnchor.constraint(equalToConstant : 30).isActive = true
        
        
        
        mainView.addSubview(priceView)
        priceView.topAnchor.constraint(equalTo: sView.bottomAnchor,constant : 5).isActive = true
        priceView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor ).isActive = true
        priceView.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.9).isActive = true
        priceView.heightAnchor.constraint(equalToConstant : 30).isActive = true
        
        priceView.addSubview(pruductPriceImage)
        pruductPriceImage.centerYAnchor.constraint(equalTo: priceView.centerYAnchor).isActive = true
        pruductPriceImage.rightAnchor.constraint(equalTo: priceView.rightAnchor,constant : -5 ).isActive = true
        pruductPriceImage.widthAnchor.constraint(equalTo: priceView.widthAnchor,multiplier : 0.05).isActive = true
        pruductPriceImage.heightAnchor.constraint(equalTo :  pruductPriceImage.widthAnchor).isActive = true
        //////
        priceView.addSubview(productPriceText)
        productPriceText.centerYAnchor.constraint(equalTo: priceView.centerYAnchor).isActive = true
        productPriceText.rightAnchor.constraint(equalTo: pruductPriceImage.leftAnchor,constant : -5 ).isActive = true
        productPriceText.widthAnchor.constraint(equalTo: priceView.widthAnchor,multiplier : 0.9).isActive = true
        productPriceText.heightAnchor.constraint(equalToConstant : 30).isActive = true
        
        
        
        
        mainView.addSubview(costView)
        costView.topAnchor.constraint(equalTo: priceView.bottomAnchor,constant : 5).isActive = true
        costView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor ).isActive = true
        costView.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.9).isActive = true
        costView.heightAnchor.constraint(equalToConstant : 30).isActive = true
        
        costView.addSubview(pruductCostImage)
        pruductCostImage.centerYAnchor.constraint(equalTo: priceView.centerYAnchor).isActive = true
        pruductCostImage.rightAnchor.constraint(equalTo: costView.rightAnchor,constant : -5 ).isActive = true
        pruductCostImage.widthAnchor.constraint(equalTo: costView.widthAnchor,multiplier : 0.05).isActive = true
        pruductCostImage.heightAnchor.constraint(equalTo :  pruductCostImage.widthAnchor).isActive = true
        //////
        costView.addSubview(productCostText)
        productCostText.centerYAnchor.constraint(equalTo: costView.centerYAnchor).isActive = true
        productCostText.rightAnchor.constraint(equalTo: pruductCostImage.leftAnchor,constant : -5 ).isActive = true
        productCostText.widthAnchor.constraint(equalTo: costView.widthAnchor,multiplier : 0.9).isActive = true
        productCostText.heightAnchor.constraint(equalToConstant : 30).isActive = true
        
        
        
        mainView.addSubview(discountView)
        discountView.topAnchor.constraint(equalTo: costView.bottomAnchor,constant : 5).isActive = true
        discountView.rightAnchor.constraint(equalTo: costView.rightAnchor ).isActive = true
        discountView.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.42).isActive = true
        discountView.heightAnchor.constraint(equalToConstant : 30).isActive = true
        
        discountView.addSubview(discountImage)
        discountImage.centerYAnchor.constraint(equalTo: discountView.centerYAnchor).isActive = true
        discountImage.rightAnchor.constraint(equalTo: discountView.rightAnchor,constant : -5 ).isActive = true
        discountImage.widthAnchor.constraint(equalTo: discountView.widthAnchor,multiplier : 0.1).isActive = true
        discountImage.heightAnchor.constraint(equalTo :  discountImage.widthAnchor).isActive = true
        //////
        discountView.addSubview(discountText)
        discountText.centerYAnchor.constraint(equalTo: discountView.centerYAnchor).isActive = true
        discountText.rightAnchor.constraint(equalTo: discountImage.leftAnchor,constant : -5 ).isActive = true
        discountText.widthAnchor.constraint(equalTo: discountView.widthAnchor,multiplier : 0.9).isActive = true
        discountText.heightAnchor.constraint(equalToConstant : 30).isActive = true
        
        
        ////////////
        mainView.addSubview(discountperiodView)
        discountperiodView.topAnchor.constraint(equalTo: costView.bottomAnchor,constant : 5).isActive = true
        discountperiodView.leftAnchor.constraint(equalTo: costView.leftAnchor ).isActive = true
        discountperiodView.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.42).isActive = true
        discountperiodView.heightAnchor.constraint(equalToConstant : 30).isActive = true
        
        discountperiodView.addSubview(discountperiodImage)
        discountperiodImage.centerYAnchor.constraint(equalTo: discountperiodView.centerYAnchor).isActive = true
        discountperiodImage.rightAnchor.constraint(equalTo: discountperiodView.rightAnchor,constant : -5 ).isActive = true
        discountperiodImage.widthAnchor.constraint(equalTo: discountperiodView.widthAnchor,multiplier : 0.1).isActive = true
        discountperiodImage.heightAnchor.constraint(equalTo :  discountperiodImage.widthAnchor).isActive = true
        //////
        discountperiodView.addSubview(discountperiodText)
        discountperiodText.centerYAnchor.constraint(equalTo: discountperiodView.centerYAnchor).isActive = true
        discountperiodText.rightAnchor.constraint(equalTo: discountperiodImage.leftAnchor,constant : -5 ).isActive = true
        discountperiodText.widthAnchor.constraint(equalTo: discountperiodView.widthAnchor,multiplier : 0.9).isActive = true
        discountperiodText.heightAnchor.constraint(equalToConstant : 30).isActive = true
        
        
        mainView.addSubview(toolbar)
        toolbar.topAnchor.constraint(equalTo: discountperiodView.bottomAnchor,constant :40).isActive = true
        toolbar.centerXAnchor.constraint(equalTo: mainView.centerXAnchor ).isActive = true
        toolbar.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.9).isActive = true
        toolbar.heightAnchor.constraint(equalTo : mainView.heightAnchor,multiplier : 0.1).isActive = true
        toolbar.options = RichEditorDefaultOption.all
        toolbar.editor = productDescription
        
        
        
        
        
        mainView.addSubview(textiew)
        textiew.topAnchor.constraint(equalTo: toolbar.bottomAnchor).isActive = true
        textiew.centerXAnchor.constraint(equalTo: mainView.centerXAnchor ).isActive = true
        textiew.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.9).isActive = true
        textiew.heightAnchor.constraint(equalTo : mainView.heightAnchor,multiplier : 0.27).isActive = true
        ///////// product description text view
        textiew.addSubview(productDescription)
        productDescription.centerYAnchor.constraint(equalTo: textiew.centerYAnchor).isActive = true
        productDescription.centerXAnchor.constraint(equalTo: textiew.centerXAnchor ).isActive = true
        productDescription.widthAnchor.constraint(equalTo: textiew.widthAnchor).isActive = true
        productDescription.heightAnchor.constraint(equalTo : textiew.heightAnchor).isActive = true
        productDescription.bold()
        productDescription.italic()
        /////// talla bar
        mainView.addSubview(DescribePruductlabel)
        DescribePruductlabel.bottomAnchor.constraint(equalTo: toolbar.topAnchor,constant : -5).isActive = true
        DescribePruductlabel.rightAnchor.constraint(equalTo: toolbar.rightAnchor ).isActive = true

        mainView.addSubview(addColorBtn)
        addColorBtn.bottomAnchor.constraint(equalTo: mainView.bottomAnchor,constant : -10 ).isActive = true
        addColorBtn.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -60 ).isActive = true
        addColorBtn.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.3).isActive = true
        addColorBtn.heightAnchor.constraint(equalToConstant : 25).isActive = true
        
        
        
        mainView.addSubview(addSizeBtn)
        addSizeBtn.bottomAnchor.constraint(equalTo: mainView.bottomAnchor,constant : -10 ).isActive = true
        addSizeBtn.rightAnchor.constraint(equalTo: addColorBtn.leftAnchor,constant : -10 ).isActive = true
        addSizeBtn.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.3).isActive = true
        addSizeBtn.heightAnchor.constraint(equalToConstant : 25).isActive = true
        
    
    }
    
    
    let  mainView :UIView = {
        let uv = UIView()
        uv.backgroundColor = .white
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        return uv
    }()
    
  
    
    
    let ProductDescriptionLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("خيارات المنتج", comment: "this is name")
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
    
    
    
    let  fView :UIView = {
        let uv = UIView()
        uv.backgroundColor = .white
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        uv.layer.cornerRadius = 3

        return uv
    }()
    
    let productNameText :UITextField = {
        let tf = UITextField()
        tf.textColor = UIColor.rgb(48, green: 39, blue: 133)
        tf.attributedPlaceholder = NSAttributedString(string:NSLocalizedString("اسم المنتج ", comment: "this is name"),
                                                      
                                                      attributes:[NSForegroundColorAttributeName: UIColor.rgb(48, green: 39, blue: 133)])
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        tf.font = font
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.textAlignment = .right
        return tf
    }()
    
    

    
    
    let  pruductNameImage :UIImageView = {
        let ci = UIImageView(image:#imageLiteral(resourceName: "archive"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    ////////
    
    
    
    let  sView :UIView = {
        let uv = UIView()
        uv.backgroundColor = .white
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        uv.layer.cornerRadius = 3

        return uv
    }()
    
    let productAmountText :UITextField = {
        let tf = UITextField()
        tf.textColor = UIColor.rgb(48, green: 39, blue: 133)
        tf.attributedPlaceholder = NSAttributedString(string:NSLocalizedString(" كمية المنتج", comment: "this is name"),
                                                      
                                                      attributes:[NSForegroundColorAttributeName: UIColor.rgb(48, green: 39, blue: 133)])
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        tf.font = font
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.textAlignment = .right
        return tf
    }()
    
    
    
    let  pruductamountImage :UIImageView = {
        let ci = UIImageView(image:#imageLiteral(resourceName: "pallet"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    let  priceView :UIView = {
        let uv = UIView()
        uv.backgroundColor = .white
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        uv.layer.cornerRadius = 3
        
        return uv
    }()
    
    let productPriceText :UITextField = {
        let tf = UITextField()
        tf.textColor = UIColor.rgb(48, green: 39, blue: 133)
        tf.attributedPlaceholder = NSAttributedString(string:NSLocalizedString("  سعر المنتج ", comment: "this is name"),
                                                      
                                                      attributes:[NSForegroundColorAttributeName: UIColor.rgb(48, green: 39, blue: 133)])
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        tf.font = font
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.textAlignment = .right
        return tf
    }()
    
    
    
    let  pruductPriceImage :UIImageView = {
        let ci = UIImageView(image:#imageLiteral(resourceName: "price-tag"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    let  costView :UIView = {
        let uv = UIView()
        uv.backgroundColor = .white
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        uv.layer.cornerRadius = 3
        
        return uv
    }()
    
    let productCostText :UITextField = {
        let tf = UITextField()
        tf.textColor = UIColor.rgb(48, green: 39, blue: 133)
        tf.attributedPlaceholder = NSAttributedString(string:NSLocalizedString("  سعر التكلفة ", comment: "this is name"),
                                                      
                                                      attributes:[NSForegroundColorAttributeName: UIColor.rgb(48, green: 39, blue: 133)])
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        tf.font = font
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.textAlignment = .right
        return tf
    }()
    
    
    
    let  pruductCostImage :UIImageView = {
        let ci = UIImageView(image:#imageLiteral(resourceName: "price-tag"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    ///////////////////////////////////////////////////////////////////
    
    
    let  discountView :UIView = {
        let uv = UIView()
        uv.backgroundColor = .white
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        uv.layer.cornerRadius = 3
        
        return uv
    }()
    
    let discountText :UITextField = {
        let tf = UITextField()
        tf.textColor = UIColor.rgb(48, green: 39, blue: 133)
        tf.attributedPlaceholder = NSAttributedString(string:NSLocalizedString(" نسبة التخفيض", comment: "this is name"),
                                                      
                                                      attributes:[NSForegroundColorAttributeName: UIColor.rgb(48, green: 39, blue: 133)])
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        tf.font = font
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.textAlignment = .right
        return tf
    }()
    
    
    
    let  discountImage :UIImageView = {
        let ci = UIImageView(image:#imageLiteral(resourceName: "bargain"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    //////////////////////////////////////////////////
    let  discountperiodView :UIView = {
        let uv = UIView()
        uv.backgroundColor = .white
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        uv.layer.cornerRadius = 3
        
        return uv
    }()
    
    let  discountperiodText :UITextField = {
        let tf = UITextField()
        tf.textColor = UIColor.rgb(48, green: 39, blue: 133)
        tf.attributedPlaceholder = NSAttributedString(string:NSLocalizedString("مدة التخفيض ", comment: "this is name"),
                                                      
                                                      attributes:[NSForegroundColorAttributeName: UIColor.rgb(48, green: 39, blue: 133)])
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        tf.font = font
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.textAlignment = .right
        return tf
    }()
    
    
    
    let  discountperiodImage :UIImageView = {
        let ci = UIImageView(image:#imageLiteral(resourceName: "stopwatch"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    

    
    
    let DescribePruductlabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("وصف المنتج ", comment: "this is name")
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
//        tf.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
//        tf.layer.borderWidth = 1
//        tf.layer.cornerRadius = 3
        return tf
    }()
    
    
    
    
    
    
    
    let toolbar : RichEditorToolbar = {
    let tb = RichEditorToolbar()
    tb.translatesAutoresizingMaskIntoConstraints = false
    return tb

    }()
    
    
    
    
    let addColorBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor =  UIColor.rgb(235, green: 69, blue: 105)
        button.setTitle(NSLocalizedString(" اضافة لون للمنتج", comment: "this is name"),for: .normal)
        button.addTarget(self, action: #selector(asd), for: .touchUpInside)
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        button.titleLabel?.font  = font!
        button.setTitleColor(UIColor.white, for: UIControlState.normal)  ///// how to give it black color and font
        button.layer.cornerRadius = 10
        return button
    }()
    
    @objc func asd (){
        
    }
    
    
    
    
    
    
    
    
    let addSizeBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor =  UIColor.rgb(235, green: 69, blue: 105)
        button.setTitle(NSLocalizedString(" اضافة حجم للمنتج ", comment: "this is name"),for: .normal)
        button.addTarget(self, action: #selector(asd2), for: .touchUpInside)
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        button.titleLabel?.font  = font!
        button.setTitleColor(UIColor.white, for: UIControlState.normal)  ///// how to give it black color and font
        button.layer.cornerRadius = 10
        return button
    }()
    
    @objc func asd2 (){
        
    }
    
    
}




