//
//  File.swift
//  Parshot
//
//  Created by hazem on 9/30/18.
//  Copyright © 2018 hazem. All rights reserved.


import UIKit
class parashotOffersMainController : UICollectionViewController , UICollectionViewDelegateFlowLayout {

    var footer = "footer"
    var cellId0 = "cellId0"
    var cellId1 = "cellId1"
    var Headers = "Headers"
    var selectedIndex : Int?
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        if selectedIndex == 0 {
            
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.cellId0, for: indexPath) as! ParashotDealsController
        return cell
        
        }else{
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.cellId1, for: indexPath) as! parashotOffersController
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if selectedIndex == 0 {
        
            return CGSize(width:collectionView.frame.width  , height: collectionView.frame.height * 0.5 )
        
        } else {
            return CGSize(width:collectionView.frame.width  , height: collectionView.frame.height)
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionElementKindSectionHeader:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: self.Headers, for: indexPath as IndexPath) as! ParashotOffersHeader
            header.marketName.text = "عروض برشوت"
          // selectedIndex =  header.segmentedControl.selectedSegmentIndex
            header.controller = self
            
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
        return CGSize(width:collectionView.frame.width , height: collectionView.frame.height  * 0.15)
    }
    

    
    override func viewDidLoad() {
         collectionView?.contentInset = UIEdgeInsetsMake(0, 0, 0, 0)
         collectionView?.backgroundColor = UIColor.rgb(252, green: 244, blue: 246)
         collectionView?.register(ParashotDealsController.self, forCellWithReuseIdentifier: cellId0)
         collectionView?.register(parashotOffersController.self, forCellWithReuseIdentifier: cellId1)
       
        collectionView?.register(thirdMainFooter.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footer)
        collectionView?.register(ParashotOffersHeader.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: Headers)
        
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
  
    func chat(){
        
        
    }
    
    /////
   
    func star (){
        
    }
    
    
    
}

