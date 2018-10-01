//
//  MainSubjectController.swift
//  Boshra
//
//  Created by hazem on 8/26/18.
//  Copyright © 2018 hazem. All rights reserved.
//


import UIKit


class ChatListController : UICollectionViewController , UICollectionViewDelegateFlowLayout {
    
    var cell = "cell"
    var Headers = "Headers"
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return  6
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.cell, for: indexPath) as! ChatLisView
        return cell
        
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width:collectionView.frame.width-10  , height: collectionView.frame.height * 0.12)
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: self.Headers, for: indexPath as IndexPath) as! PhotographerHeader
        header.marketName.text = "محادثاتي  "
        
        return header
        
    }
    
    //////// give to colletionview how many image  in every cell
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    /////// give header size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width:collectionView.frame.width , height: collectionView.frame.height  * 0.1)
    }
    
    
    override func viewDidLoad() {
        
        collectionView?.contentInset = UIEdgeInsetsMake(0, 0, 0, 0)
        collectionView?.backgroundColor = UIColor.rgb(252, green: 244, blue: 246)
        collectionView?.register(ChatLisView.self, forCellWithReuseIdentifier: cell)
        collectionView?.register(PhotographerHeader.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: Headers)
        
        // setup navBar.....
        navigationController?.navigationBar.barTintColor = UIColor.rgb(252, green: 244, blue: 246)
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        let layout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout
        layout?.sectionFootersPinToVisibleBounds = true
        //////////
        let logo = UIImage(named: "P A R A S H O T E@1X")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
        
    }
    
    
}
