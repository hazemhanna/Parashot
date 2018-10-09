//
//  MainSubjectController.swift
//  Boshra
//
//  Created by hazem on 8/26/18.
//  Copyright © 2018 hazem. All rights reserved.
//


import UIKit


class ProductsMainController : UICollectionViewController , UICollectionViewDelegateFlowLayout {
    
    var footer = "footer"
    var cell = "cell"
    var Headers = "Headers"
    
    
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.cell, for: indexPath) as! ProductsController
        
        cell.controller = self
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width:collectionView.frame.width  , height: collectionView.frame.height)
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionElementKindSectionHeader:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: self.Headers, for: indexPath as IndexPath) as! ProductsHeader
            header.marketName.text = "products"
            return header
            
        case UICollectionElementKindSectionFooter:
            
            let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier:  footer, for: indexPath as IndexPath) as! thirdMainFooter
            return footerView
            
        default:
            
            fatalError("Unexpected element kind")
        }
        
    }
    
    /////// size for the footer
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        
        return CGSize(width:collectionView.frame.width , height: collectionView.frame.height  * 0.08)
        
    }
    
    /////// give header size
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width:collectionView.frame.width , height: collectionView.frame.height  * 0.08)
    }
    
    
    override func viewDidLoad() {
        
        
        view.addSubview(blacView)
        blacView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        blacView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        blacView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        blacView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        blacView.isHidden = true
        
        view.addSubview(addView)
        addView.centerYAnchor.constraint(equalTo: view.centerYAnchor ).isActive = true
        addView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        addView.widthAnchor.constraint(equalTo: view.widthAnchor,multiplier : 0.8).isActive = true
        addView.heightAnchor.constraint(equalTo: view.heightAnchor,multiplier : 0.2).isActive = true
        addView.isHidden = true
        
        
        addView.addSubview(confirmlabel)
        confirmlabel.centerYAnchor.constraint(equalTo: addView.centerYAnchor ).isActive = true
        confirmlabel.centerXAnchor.constraint(equalTo: addView.centerXAnchor).isActive = true
       
        addView.addSubview(messageLabel)
        messageLabel.rightAnchor.constraint(equalTo: addView.rightAnchor,constant : -10 ).isActive = true
        messageLabel.topAnchor.constraint(equalTo: addView.topAnchor,constant : 10 ).isActive = true
        
        addView.addSubview(saveBtn)
        saveBtn.rightAnchor.constraint(equalTo: addView.rightAnchor,constant : -10 ).isActive = true
        saveBtn.topAnchor.constraint(equalTo: confirmlabel.bottomAnchor,constant :20).isActive = true
        saveBtn.widthAnchor.constraint(equalTo: addView.widthAnchor,multiplier : 0.4).isActive = true
        saveBtn.heightAnchor.constraint(equalTo: addView.heightAnchor,multiplier : 0.2).isActive = true
        saveBtn.isHidden = true
        
        addView.addSubview(CancelBtn)
        CancelBtn.leftAnchor.constraint(equalTo: addView.leftAnchor,constant : 10 ).isActive = true
        CancelBtn.topAnchor.constraint(equalTo: confirmlabel.bottomAnchor,constant :20).isActive = true
        CancelBtn.widthAnchor.constraint(equalTo: addView.widthAnchor,multiplier : 0.4).isActive = true
        CancelBtn.heightAnchor.constraint(equalTo: addView.heightAnchor,multiplier : 0.2).isActive = true
        CancelBtn.isHidden = true
        
        
        
        collectionView?.contentInset = UIEdgeInsetsMake(0, 0, 0, 0)
        collectionView?.backgroundColor = UIColor.rgb(252, green: 244, blue: 246)
        collectionView?.register(ProductsController.self, forCellWithReuseIdentifier: cell)
        
        collectionView?.register(thirdMainFooter.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footer)
        collectionView?.register(ProductsHeader.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: Headers)
        
        // setup navBar.....
        navigationController?.navigationBar.barTintColor = UIColor.rgb(252, green: 244, blue: 246)
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        let layout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout
        layout?.sectionFootersPinToVisibleBounds = true
        
        
        //////////
        let logo = UIImage(named: "P A R A S H O T E@1X")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
        
        
        let StarButton = UIBarButtonItem(image: UIImage(named: "search2")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(star))
        navigationItem.rightBarButtonItem = StarButton
        
        let chatButton = UIBarButtonItem(image: UIImage(named: "menue3")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(chat))
        navigationItem.leftBarButtonItem = chatButton
        
    }
    
    ///////////
    func chat()  {  }
    /////
    func star ()  {  }
    
    
    ///// function called when belete button press
    func ShowBlackView()  {
        addView.isHidden = false
        saveBtn.isHidden = false
        CancelBtn.isHidden = false
        blacView.isHidden = false

    }
    
    let  blacView :UIView = {
        let uv = UIView()
        uv.backgroundColor = .black
        uv.translatesAutoresizingMaskIntoConstraints = false
       uv.alpha =  0.1
        return uv
    }()
    
    let  addView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.white
       
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        uv.layer.cornerRadius = 15
        
        return uv
    }()
   
    let messageLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("رسالة تاكيد", comment: "this is name")
        return NL
        
    }()

    
    let confirmlabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("هل تريد مسح المنتج ؟", comment: "this is name")
        return NL
        
    }()
  
    
    // save buttun to send size  black view
    let saveBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor =  UIColor.rgb(84, green: 0, blue: 121)
        button.setTitle(NSLocalizedString(" موافق", comment: "this is name"),for: .normal)
        button.addTarget(self, action: #selector(asd2), for: .touchUpInside)
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        button.titleLabel?.font  = font!
        button.setTitleColor(UIColor.white, for: UIControlState.normal)  ///// how to give it black color and font
        button.layer.cornerRadius = 15
        return button
    }()
    
    @objc func asd2 (){
        
        blacView.isHidden = true
        addView.isHidden = true
        saveBtn.isHidden = true
        CancelBtn.isHidden = true
    }
    
    // cancel buttun to canccel black view
    let CancelBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor =  UIColor.red
        button.setTitle(NSLocalizedString("ألغاء", comment: "this is name"),for: .normal)
        button.addTarget(self, action: #selector(asd), for: .touchUpInside)
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        button.titleLabel?.font  = font!
        button.setTitleColor(UIColor.white, for: UIControlState.normal)  ///// how to give it black color and font
        button.layer.cornerRadius = 15
        return button
    }()
    
    @objc func asd (){
        
        blacView.isHidden = true
        addView.isHidden = true
        saveBtn.isHidden = true
        CancelBtn.isHidden = true
    }
    
    
}

