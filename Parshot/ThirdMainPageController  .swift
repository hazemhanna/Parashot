//
//  ThirdMainPageController  .swift
//  Parshot
//
//  Created by hazem on 9/5/18.
//  Copyright © 2018 hazem. All rights reserved.
//
//
//  MainPageController1.swift
//  Parshot
//
//  Created by hazem on 9/3/18.
//  Copyright © 2018 hazem. All rights reserved.
//


import UIKit


class ThirdMainPageController  :  UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var footer = "footer"
    var Cellid0="Cellid0"
    var Cellid1="Cellid1"
    var Cellid2="Cellid2"
    var Cellid3="Cellid3"
    var Cellid4="Cellid4"
    
    
    
    
    //////// hide status bar
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid0, for: indexPath) as! ThirdSliderController
            return cell
        }
        else  {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid1, for: indexPath) as! ThirdDepartmentController
            return cell
        }
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 2
        
    }
    
    ////// size of the cell
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.item == 0 {
            
            return CGSize(width:collectionView.frame.width ,height:(collectionView.frame.height  * 0.3) - (navigationController?.navigationBar.frame.size.height)!)
            
        }else  {
            
            return CGSize(width:collectionView.frame.width ,height:(collectionView.frame.height  * 0.8) - 80)
            
        }
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: self.footer, for: indexPath as IndexPath) as! thirdMainFooter
        
        return footer
    }
    
    /////// size for the footer
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        
        return CGSize(width:collectionView.frame.width , height: collectionView.frame.height  * 0.08)
        
    }
    
    
    
    override func viewDidLoad() {
        collectionView?.contentInset = UIEdgeInsetsMake(0, 0, 0, 0)
        collectionView?.backgroundColor = UIColor.rgb(252, green: 244, blue: 246)
        collectionView?.register(ThirdSliderController.self, forCellWithReuseIdentifier: Cellid0)
        collectionView?.register(ThirdDepartmentController .self, forCellWithReuseIdentifier: Cellid1)
        
        collectionView?.register(thirdMainFooter.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footer)
        collectionView?.isScrollEnabled = false
        
        // setup navBar.....
        navigationController?.navigationBar.barTintColor = UIColor.rgb(252, green: 244, blue: 246)
       /// navigationItem.title = NSLocalizedString("parashot", comment: "this is name")
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        // casting is required because UICollectionViewLayout doesn't offer header pin. Its feature of UICollectionViewFlowLayout
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
    
    
    func chat()  {
        
    }
    
    func star ()  {
        
    }
    
}
