//
//  SecondSubCategry.swift
//  Parshot
//
//  Created by hazem on 9/8/18.
//  Copyright © 2018 hazem. All rights reserved.
//

//
//  MainSubjectController.swift
//  Boshra
//
//  Created by hazem on 8/26/18.
//  Copyright © 2018 hazem. All rights reserved.
//


import UIKit
import DKImagePickerController


class FirstAddProductController : UICollectionViewController , UICollectionViewDelegateFlowLayout {
    
    var pickerController: DKImagePickerController!
    var assets: [DKAsset]?
    var UserImage = [UIImage]()
    
    var footer  = "footer"
    var Headers = "Headers"
    var Cellid0 = "Cellid0"
    var Cellid1 = "Cellid1"
    var Cellid2 = "Cellid2"
    var Cellid3 = "Cellid3"
 
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid0, for: indexPath) as! FirstAddProductImagesController
             cell.controller = self
              cell.image = UserImage
            return cell
        
        
        }else if indexPath.item == 1  {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid1, for: indexPath) as!ProductOprionsView
            return cell
        
        }
        else if indexPath.item == 2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid2, for: indexPath) as!AddProductColorController
            cell.controller = self
            return cell
            
        }else  {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid3, for: indexPath) as!AddProductSizeControler
           cell.controller = self
          // cell.InsertNewSize(Size: SizeTf.text!)
            
            return cell
            
        }
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 4
        
    }
    
    ////// size of the cell
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.item == 0 {
            
            return CGSize(width:collectionView.frame.width - 20 ,height:(collectionView.frame.height  * 0.3))
            
        }else if indexPath.item == 1  {
            
            return CGSize(width:collectionView.frame.width - 20  ,height:(collectionView.frame.height  * 0.7))
            
        }
        else if indexPath.item == 2 {
            
            return CGSize(width:collectionView.frame.width - 20  ,height:(collectionView.frame.height  * 0.15) )
            
        }else {
            
            return CGSize(width:collectionView.frame.width - 20  ,height:(collectionView.frame.height  * 0.15)-20 )
            
        }
    }
   
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionElementKindSectionHeader:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: self.Headers, for: indexPath as IndexPath) as! HeadrWithoutCart
            header.marketName.text = " اضافة منتج "
            return header
            
        case UICollectionElementKindSectionFooter:
            
            let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier:  footer, for: indexPath as IndexPath) as! FirstAddProductFooter
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
        
        blacView.addSubview(addView)
        addView.centerYAnchor.constraint(equalTo: blacView.centerYAnchor,constant : -20 ).isActive = true
        addView.centerXAnchor.constraint(equalTo: blacView.centerXAnchor).isActive = true
        addView.widthAnchor.constraint(equalTo: blacView.widthAnchor,multiplier : 0.8).isActive = true
        addView.heightAnchor.constraint(equalTo: blacView.heightAnchor,multiplier : 0.2).isActive = true
        addView.isHidden = true
        
        addView.addSubview(SizeTf)
        SizeTf.centerXAnchor.constraint(equalTo: addView.centerXAnchor).isActive = true
        SizeTf.topAnchor.constraint(equalTo: addView.topAnchor,constant :30).isActive = true
        SizeTf.widthAnchor.constraint(equalTo: addView.widthAnchor,multiplier : 0.9).isActive = true
        SizeTf.heightAnchor.constraint(equalTo: addView.heightAnchor,multiplier : 0.3).isActive = true
        SizeTf.textAlignment = .center
        SizeTf.isHidden = true
        
        
        addView.addSubview(saveBtn)
        saveBtn.rightAnchor.constraint(equalTo: addView.rightAnchor,constant : -10 ).isActive = true
        saveBtn.topAnchor.constraint(equalTo: SizeTf.bottomAnchor,constant :20).isActive = true
        saveBtn.widthAnchor.constraint(equalTo: addView.widthAnchor,multiplier : 0.4).isActive = true
        saveBtn.heightAnchor.constraint(equalTo: addView.heightAnchor,multiplier : 0.2).isActive = true
        saveBtn.isHidden = true
        
        addView.addSubview(CancelBtn)
        CancelBtn.leftAnchor.constraint(equalTo: addView.leftAnchor,constant : 10 ).isActive = true
        CancelBtn.topAnchor.constraint(equalTo: SizeTf.bottomAnchor,constant :20).isActive = true
        CancelBtn.widthAnchor.constraint(equalTo: addView.widthAnchor,multiplier : 0.4).isActive = true
        CancelBtn.heightAnchor.constraint(equalTo: addView.heightAnchor,multiplier : 0.2).isActive = true
        CancelBtn.isHidden = true
        
        
        collectionView?.contentInset = UIEdgeInsetsMake(0, 0, 0, 0)
        collectionView?.backgroundColor = UIColor.rgb(252, green: 244, blue: 246)
        collectionView?.register(FirstAddProductImagesController.self, forCellWithReuseIdentifier: Cellid0)
        collectionView?.register(ProductOprionsView.self, forCellWithReuseIdentifier: Cellid1)
        collectionView?.register(AddProductColorController.self, forCellWithReuseIdentifier: Cellid2)
        collectionView?.register(AddProductSizeControler.self, forCellWithReuseIdentifier: Cellid3)

 
        collectionView?.isScrollEnabled = true
        collectionView?.register(FirstAddProductFooter.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footer)
        collectionView?.register(HeadrWithoutCart.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: Headers)
        
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
    /////////// navigation bar function
    func chat()  {
    
    
    }
    
    //// navigation bar function
    
    func star ()  {
    
    }
    
    
    
    func SwitchToImagePicker( ) {
        let pickerController = DKImagePickerController()
        pickerController.allowMultipleTypes = true
        pickerController.didSelectAssets = { (assets: [DKAsset]) in
            print("didSelectAssets")
            self.assets = assets
            
            for data in assets{
                data.fetchImageWithSize(CGSize(width:500,height:500), completeBlock: { image, info in
                    
                    
                    self.UserImage.append(image!)
                    DispatchQueue.main.async(execute: {
                        self.collectionView?.reloadData()
                    })
                })
                
            }
            
        }
        
        self.present(pickerController, animated: true) {}
    }
    
    
    ////// this function call from add image in color  cell to show  color page
    func PresentColorPicker(){
       
        let hospitalControll =  ColoePickerController()
        self.navigationController?.pushViewController(hospitalControll, animated: true)
        print ("hazem")
    
    }

    
    ////// this function call from add imag  in size  collection to show black view
    func ShowBlackView()  {
        blacView.isHidden = false
        addView.isHidden = false
        SizeTf.isHidden = false
        saveBtn.isHidden = false
        CancelBtn.isHidden = false
        
    }
    
    
    let  blacView :UIView = {
        let uv = UIView()
        uv.backgroundColor = .black
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.alpha = 0.7
        return uv
    }()
    
    let  addView :UIView = {
        let uv = UIView()
        uv.backgroundColor = .white
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        uv.layer.cornerRadius = 15

        return uv
    }()
    
    // textField to enter your size
    let SizeTf :UITextField = {
        let tf = UITextField()
        tf.textColor = UIColor.rgb(48, green: 39, blue: 133)
        tf.attributedPlaceholder = NSAttributedString(string:NSLocalizedString(" ", comment: "this is name"),
                                                      
                                                      attributes:[NSForegroundColorAttributeName: UIColor.rgb(48, green: 39, blue: 133)])
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        tf.font = font
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor.clear
        tf.layer.borderColor = UIColor.black.cgColor
        tf.layer.borderWidth = 1
       tf.layer.cornerRadius = 7
        return tf
        
    }()
    
    // save buttun to send size  black view
    let saveBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor =  UIColor.rgb(84, green: 0, blue: 121)
        button.setTitle(NSLocalizedString(" حفظ", comment: "this is name"),for: .normal)
        button.addTarget(self, action: #selector(asd2), for: .touchUpInside)
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        button.titleLabel?.font  = font!
        button.setTitleColor(UIColor.white, for: UIControlState.normal)  ///// how to give it black color and font
        button.layer.cornerRadius = 15
        return button
    }()
    
    @objc func asd2 (){
        
        if SizeTf.text != " " {
            let notificationName = Notification.Name("insetDataInArray")
            NotificationCenter.default.post(name: notificationName, object: SizeTf.text)
        }
        
        blacView.isHidden = true
        addView.isHidden = true
        SizeTf.isHidden = true
        saveBtn.isHidden = true
        CancelBtn.isHidden = true
        SizeTf.text = " "
    }
    
    // cancel buttun to canccel black view
    let CancelBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor =  UIColor.red
        button.setTitle(NSLocalizedString(" الغا", comment: "this is name"),for: .normal)
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
        SizeTf.isHidden = true
        saveBtn.isHidden = true
        CancelBtn.isHidden = true
    }
    
}
