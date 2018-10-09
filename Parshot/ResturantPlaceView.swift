//
//  RestuarantView.swift
//  Parshot
//
//  Created by hazem on 9/9/18.
//  Copyright © 2018 hazem. All rights reserved.
//


import UIKit
import GoogleMaps


class ResturantPlaceView : BaseCell, GMSMapViewDelegate{

    
    var state_markers2 = GMSMarker()
    
    override func setupViews() {
        

        

        
        
        addSubview(mainView)
        mainView.topAnchor.constraint(equalTo: topAnchor,constant : 10).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.25).isActive = true
        
        
        
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
        ///// marker

        mainView.addSubview(resturanrName)
        resturanrName.topAnchor.constraint(equalTo: resturantImage.bottomAnchor,constant : 5).isActive = true
        resturanrName.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        
        addSubview(detailsTV)
        detailsTV.topAnchor.constraint(equalTo: mainView.bottomAnchor).isActive = true
        detailsTV.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        detailsTV.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        detailsTV.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.1).isActive = true
        /////
        addSubview(googlemap)
        googlemap.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        googlemap.topAnchor.constraint(equalTo:detailsTV.bottomAnchor).isActive = true
        googlemap.widthAnchor.constraint(equalTo:  widthAnchor).isActive = true
        googlemap.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.47).isActive = true

        
        self.state_markers2.position = CLLocationCoordinate2D(latitude:30.044420 ,  longitude :31.235712 )
        self.state_markers2.infoWindowAnchor = CGPoint(x: 0.5, y: 0.5)
        self.state_markers2.appearAnimation = .pop
        self.state_markers2.isFlat = true
        self.state_markers2.map = self.googlemap
        
        
        addSubview(parashotTextView)
        parashotTextView.bottomAnchor.constraint(equalTo: bottomAnchor,constant : -20).isActive = true
        parashotTextView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        parashotTextView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        parashotTextView.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.1).isActive = true
        
        
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
        var font = UIFont(name: "JFFlat-Regular", size: 20)
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
    
    // 31.235712 lon
    /// 30.044420 lat
    //// mapView
    lazy  var  googlemap : GMSMapView = {
        GMSServices.provideAPIKey("AIzaSyAqG1lv5dPgid5U50whDhP_bRTlopLXyMY")
        let camera = GMSCameraPosition.camera(withLatitude:30.044420,  longitude :31.235712, zoom: 15)
        let  googlemaps = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        googlemaps.translatesAutoresizingMaskIntoConstraints = false
        googlemaps.delegate = self
        return googlemaps
    }()
    
    
    let parashotTextView :UITextView = {
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
    
}

