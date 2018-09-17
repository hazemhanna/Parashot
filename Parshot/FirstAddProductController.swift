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
    
    
    func PresentColorPicker(){
       
      
    print ("hazem")
    
    }
    
    
    ///////////
    func chat()  {  }
    /////
    func star ()  {  }
    
    
    
    
}
