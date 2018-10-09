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


class ResturantPlaceControler  :  UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var footer = "footer"
    var Cellid0="Cellid0"
    
    
    
    
    
    //////// hide status bar
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid0, for: indexPath) as! ResturantPlaceView
        return cell
        
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 1
        
    }
    
    ////// size of the cell
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        
        return CGSize(width:collectionView.frame.width ,height:(collectionView.frame.height) - (navigationController?.navigationBar.frame.size.height)!)
        
        
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: self.footer, for: indexPath as IndexPath) as! ResturantPlaceFooter
        
        return footer
    }
    
    /////// size for the footer
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        
        return CGSize(width:collectionView.frame.width , height: collectionView.frame.height  * 0.07)
        
    }
    
    
    
    override func viewDidLoad() {
        collectionView?.contentInset = UIEdgeInsetsMake(0, 0, 0, 0)
        collectionView?.backgroundColor = UIColor.rgb(252, green: 244, blue: 246)
        collectionView?.register(ResturantPlaceView.self, forCellWithReuseIdentifier: Cellid0)
        
        collectionView?.register(ResturantPlaceFooter.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footer)
        collectionView?.isScrollEnabled = true
        
        // setup navBar.....
        navigationController?.navigationBar.barTintColor = UIColor.rgb(252, green: 244, blue: 246)
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

