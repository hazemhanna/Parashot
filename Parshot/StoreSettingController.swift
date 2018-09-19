//
//  MainSubjectController.swift
//  Boshra
//
//  Created by hazem on 8/26/18.
//  Copyright © 2018 hazem. All rights reserved.
//


import UIKit
import DKImagePickerController


class StoreSettingController : UICollectionViewController , UICollectionViewDelegateFlowLayout {
    
    var footer = "footer"
    var Headers = "Headers"
    var Cellid0 = "Cellid0"
    var Cellid1 = "Cellid1"
    var  Cellid2 = "Cellid2"
    
    
    var pickerController: DKImagePickerController!
    var assets: [DKAsset]?
    var UserImage:UIImage?

    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid0, for: indexPath) as! StorePlaceView
            cell.controller = self
            if UserImage != nil {
                
                cell.IconImage.image = UserImage!
}

            return cell
       
        } else if indexPath.item == 1  {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid1, for: indexPath) as!StoreOptionsView
            return cell
            
        }else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid2, for: indexPath) as!StoreDepartmentView
            return cell
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.item == 0 {
            
            return CGSize(width:collectionView.frame.width - 10 ,height:(collectionView.frame.height  * 0.5))
            
        } else if indexPath.item == 1 {
            
            return CGSize(width:collectionView.frame.width - 10  ,height:(collectionView.frame.height  * 0.36))
            
        } else {
            
            return CGSize(width:collectionView.frame.width - 10  ,height:(collectionView.frame.height  * 0.13))
            
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    
    
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionElementKindSectionHeader:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: self.Headers, for: indexPath as IndexPath) as! StoreSettingHeader
            header.marketName.text = "الاعدادات"
            
            return header
        case UICollectionElementKindSectionFooter:
            
            let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier:  footer, for: indexPath as IndexPath) as! StoreSettingFooter
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
        return CGSize(width:collectionView.frame.width , height: collectionView.frame.height  * 0.27)
    }
    
    
    override func viewDidLoad() {
        
        collectionView?.contentInset = UIEdgeInsetsMake(0, 0, 0, 0)
        collectionView?.backgroundColor = UIColor.rgb(252, green: 244, blue: 246)
        collectionView?.register(StorePlaceView.self, forCellWithReuseIdentifier: Cellid0)
        collectionView?.register(StoreOptionsView.self, forCellWithReuseIdentifier: Cellid1)
        collectionView?.register(StoreDepartmentView.self, forCellWithReuseIdentifier: Cellid2)
        collectionView?.register(StoreSettingFooter.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footer)
        collectionView?.register(StoreSettingHeader.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: Headers)
        
        // setup navBar.....
        navigationController?.navigationBar.barTintColor = UIColor.rgb(252, green: 244, blue: 246)
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        let layout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout
        layout?.sectionFootersPinToVisibleBounds = true
        collectionView?.isScrollEnabled = true
        //////////
        
        let logo = UIImage(named: "P A R A S H O T E@1X")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
        
        
    }


    
    func SwitchToImagePicker()
        
    {
        let pickerController = DKImagePickerController()
        pickerController.allowMultipleTypes = false
        pickerController.didSelectAssets = { (assets: [DKAsset]) in
            print("didSelectAssets")
            self.assets = assets
            assets[0].fetchImageWithSize(CGSize(width:500,height:500), completeBlock: { image, info in
                //self.profilemage.image = image
                self.UserImage = image
              self.collectionView?.reloadData()
            })
        }
        
        print(assets)
        self.present(pickerController, animated: true) {}
    }

}
