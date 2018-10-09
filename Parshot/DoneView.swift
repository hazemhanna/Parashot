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
import GoogleMaps


class DoneView: BaseCell , GMSMapViewDelegate {
    
    override func setupViews() {
        addSubview(googlemap)
        googlemap.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        googlemap.centerXAnchor.constraint(equalTo:centerXAnchor ).isActive = true
        googlemap.widthAnchor.constraint(equalTo:  widthAnchor).isActive = true
        googlemap.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
   
    
    
        addSubview(addressview)
        addressview.centerYAnchor.constraint(equalTo: centerYAnchor,constant : 20 ).isActive = true
        addressview.leftAnchor.constraint(equalTo:   leftAnchor,constant :20 ).isActive = true
        addressview.widthAnchor.constraint(equalTo:   widthAnchor,multiplier : 0.7).isActive = true
        addressview.heightAnchor.constraint(equalTo:  heightAnchor,multiplier : 0.2).isActive = true
        
        addressview.addSubview(iconImage)
        iconImage.topAnchor.constraint(equalTo: addressview.topAnchor,constant : 20).isActive = true
        iconImage.rightAnchor.constraint(equalTo: addressview.rightAnchor ,constant : -10).isActive = true
        iconImage.widthAnchor.constraint(equalTo: addressview.widthAnchor,multiplier : 0.05).isActive = true
        iconImage.heightAnchor.constraint(equalTo: addressview.heightAnchor,multiplier : 0.2).isActive = true
        
        
      addSubview(arrowImage)
        arrowImage.centerYAnchor.constraint(equalTo: addressview.centerYAnchor).isActive = true
        arrowImage.leftAnchor.constraint(equalTo: leftAnchor ).isActive = true
        arrowImage.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.05).isActive = true
        arrowImage.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.1).isActive = true
        
        addressview.addSubview(addressLabel)
        addressLabel.topAnchor.constraint(equalTo: addressview.topAnchor,constant : 20).isActive = true
        addressLabel.rightAnchor.constraint(equalTo: iconImage.leftAnchor ,constant : -10).isActive = true
        
        
        
        addressview.addSubview(latlongLabel)
        latlongLabel.topAnchor.constraint(equalTo: addressLabel.bottomAnchor,constant : 10).isActive = true
        latlongLabel.rightAnchor.constraint(equalTo: iconImage.leftAnchor ,constant : -10).isActive = true
        
        
        
        addressview.addSubview(addressTexView)
        addressTexView.topAnchor.constraint(equalTo: latlongLabel.bottomAnchor,constant : 10).isActive = true
        addressTexView.rightAnchor.constraint(equalTo: addressview.rightAnchor ,constant : -10).isActive = true
        addressTexView.widthAnchor.constraint(equalTo: addressview.widthAnchor,multiplier : 0.7).isActive = true
        addressTexView.heightAnchor.constraint(equalTo: addressview.heightAnchor,multiplier : 0.3).isActive = true
        
        
        addressview.addSubview(lineview)
        lineview.centerYAnchor.constraint(equalTo: addressview.centerYAnchor).isActive = true
        lineview.rightAnchor.constraint(equalTo: addressTexView.leftAnchor ,constant : -10).isActive = true
        lineview.widthAnchor.constraint(equalToConstant : 1).isActive = true
        lineview.heightAnchor.constraint(equalTo: addressview.heightAnchor).isActive = true
        
        
        
        addressview.addSubview(pastBtn)
        pastBtn.centerYAnchor.constraint(equalTo: addressview.centerYAnchor).isActive = true
        pastBtn.leftAnchor.constraint(equalTo: addressview.leftAnchor ,constant : 10).isActive = true
        pastBtn.widthAnchor.constraint(equalTo: addressview.widthAnchor,multiplier : 0.2).isActive = true
        pastBtn.heightAnchor.constraint(equalTo: addressview.heightAnchor,multiplier : 0.3).isActive = true
        
    }
    
    lazy  var  googlemap : GMSMapView = {
        GMSServices.provideAPIKey("AIzaSyAqG1lv5dPgid5U50whDhP_bRTlopLXyMY")
        let camera = GMSCameraPosition.camera(withLatitude:30.044420,  longitude :31.235712, zoom: 17)
        let  googlemaps = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        googlemaps.translatesAutoresizingMaskIntoConstraints = false
        googlemaps.delegate = self
        return googlemaps
    }()

    /////////
    let addressview :UIView={
        let ln = UIView()
        ln.translatesAutoresizingMaskIntoConstraints = false
        ln.backgroundColor = UIColor.rgb(252, green: 244, blue: 246)
        ln.layer.cornerRadius = 20
        return ln
        }()
    
        /////
        let iconImage  :CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "43085709_560077707783189_2024948149440741376_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    let arrowImage  :CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "43016006_551318478637599_6211200116552892416_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    let  addressLabel : UILabel = {
        let button = UILabel()
        button.textColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        button.text = NSLocalizedString("الرياض -ام المصريين  ", comment: "this is name")
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        button.font  = font!
        return button
    }()
    
    
    let  latlongLabel : UILabel = {
        let button = UILabel()
        button.textColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        button.text = NSLocalizedString("(37.23444,-123.3322)", comment: "this is name")
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        button.font  = font!
        return button
    }()
    
    
    let addressTexView : UITextField = {
        let NL = UITextField()
        NL.textColor = UIColor.black
        NL.backgroundColor = UIColor.clear
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.attributedPlaceholder = NSAttributedString(string:NSLocalizedString("رقم البيت /العمارة/الشقة", comment: "this is name"),
                                                      
                                                      attributes:[NSForegroundColorAttributeName: UIColor.rgb(155, green: 155, blue: 155)])
        NL.textAlignment = .right
        NL.layer.borderColor = UIColor.rgb(214, green: 10, blue: 96).cgColor
        NL.layer.borderWidth = 1
        NL.layer.cornerRadius = 10
        return NL
        
    }()
    
    ///////
        let lineview :UIView = {
        let ln = UIView()
        ln.translatesAutoresizingMaskIntoConstraints = false
        ln.backgroundColor = UIColor.black
        return ln
    }()
    
    
    
    
    
    let pastBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.clear
        button.setTitle(NSLocalizedString("ارسل", comment: "this is name"),for: .normal)
        button.addTarget(self, action: #selector(asd2), for: .touchUpInside)
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        button.titleLabel?.font  = font!
        button.setTitleColor(UIColor.black, for: UIControlState.normal)  ///// how to give it black color and font
        button.layer.cornerRadius = 5
        return button
    }()
    
    @objc func asd2 (){
        
        
    }

}





