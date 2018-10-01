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


class MyAcountController : UICollectionViewController , UICollectionViewDelegateFlowLayout {
    
   
    
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
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid0, for: indexPath) as! MyAcountView1
            return cell
            
            
        }else if indexPath.item == 1  {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid1, for: indexPath) as!MyAcountView2
            return cell
            
        }
        else if indexPath.item == 2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid2, for: indexPath) as!MyAcountView3
            return cell
            
        }else  {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid3, for: indexPath) as!MyAcountView4
            return cell
            
        }
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 4
        
    }
    
    ////// size of the cell
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.item == 0 {
            
            return CGSize(width:collectionView.frame.width - 20 ,height:(collectionView.frame.height  * 0.15))
            
        }else if indexPath.item == 1  {
            
            return CGSize(width:collectionView.frame.width - 20  ,height:(collectionView.frame.height  * 0.15))
            
        }
        else if indexPath.item == 2 {
            
            return CGSize(width:collectionView.frame.width - 20  ,height:(collectionView.frame.height  * 0.18) )
            
        }else {
            
            return CGSize(width:collectionView.frame.width - 20  ,height:(collectionView.frame.height  * 0.15)-20 )
            
        }
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionElementKindSectionHeader:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: self.Headers, for: indexPath as IndexPath) as! MyAccoutHeader
            header.marketName.text = " حسابي "
            return header
            
        case UICollectionElementKindSectionFooter:
            
            let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier:  footer, for: indexPath as IndexPath) as! MyAcountFooter
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
        return CGSize(width:collectionView.frame.width , height: collectionView.frame.height  * 0.2)
    }
    
    
    
    
    override func viewDidLoad() {
        
        collectionView?.contentInset = UIEdgeInsetsMake(0, 0, 0, 0)
        collectionView?.backgroundColor = UIColor.rgb(252, green: 244, blue: 246)
        collectionView?.register(MyAcountView1.self, forCellWithReuseIdentifier: Cellid0)
        collectionView?.register(MyAcountView2.self, forCellWithReuseIdentifier: Cellid1)
        collectionView?.register(MyAcountView3.self, forCellWithReuseIdentifier: Cellid2)
        collectionView?.register(MyAcountView4.self, forCellWithReuseIdentifier: Cellid3)
        
        
        collectionView?.isScrollEnabled = true
        collectionView?.register(MyAcountFooter.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footer)
        collectionView?.register(MyAccoutHeader.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: Headers)
        
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
