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


class FirstProductDetailsController : UICollectionViewController , UICollectionViewDelegateFlowLayout {
    
    var footer  = "footer"
    var Headers = "Headers"
    var Cellid0 = "Cellid0"
    var Cellid1 = "Cellid1"
    var Cellid2 = "Cellid2"
    var Cellid3 = "Cellid3"
    var Cellid4 = "Cellid4"
    var Cellid5 = "Cellid5"
    var Cellid6 = "Cellid6"
    var Cellid7 = "Cellid7"

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid0, for: indexPath) as! ProductImagesController
            return cell
        }
        else if indexPath.item == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid1, for: indexPath) as!ProductNameView
            return cell
        
        }else if indexPath.item == 2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid2, for: indexPath) as!ProductColorController
            return cell
        
        }else if indexPath.item == 3 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid3, for: indexPath) as!ProductCapacityController
            return cell
        
        }else if indexPath.item == 4 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid4, for: indexPath) as!ProductDescriptionView
            return cell
        
        }else if indexPath.item == 5 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid5, for: indexPath) as!ProductDetails
            return cell
        } else if indexPath.item == 6 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid6, for: indexPath) as! ProductCompanyView
            return cell
        }else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid7, for: indexPath) as! AddToCardView
            return cell
        }
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 8
        
    }
    
    ////// size of the cell
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.item == 0 {
            
            return CGSize(width:collectionView.frame.width - 10 ,height:(collectionView.frame.height  * 0.2))
            
        } else if indexPath.item == 1 {
            
            return CGSize(width:collectionView.frame.width - 10  ,height:(collectionView.frame.height  * 0.1))
            
        }else if indexPath.item == 2 {
            
            return CGSize(width:collectionView.frame.width - 10  ,height:(collectionView.frame.height  * 0.12) )
            
        }else if indexPath.item == 3 {
            
            return CGSize(width:collectionView.frame.width - 10  ,height:(collectionView.frame.height  * 0.12) )
            
        }else if indexPath.item == 4 {
            
            return CGSize(width:collectionView.frame.width - 10  ,height:(collectionView.frame.height  * 0.12) )
            
        }else if indexPath.item == 5 {
            
            return CGSize(width:collectionView.frame.width - 10  ,height:(collectionView.frame.height  * 0.2) )
            
        }else  if indexPath.item == 6 {
            
            return CGSize(width:collectionView.frame.width - 10 ,height:(collectionView.frame.height  * 0.1))
            
        } else  {
            
            return CGSize(width:collectionView.frame.width - 10 ,height:(collectionView.frame.height  * 0.1))
            
        }
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionElementKindSectionHeader:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: self.Headers, for: indexPath as IndexPath) as! FirstSubCategryHeaders
            //header.marketName ="هاتف اونر ثناي الشريحة "
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
        collectionView?.register(ProductImagesController.self, forCellWithReuseIdentifier: Cellid0)
        collectionView?.register(ProductNameView.self, forCellWithReuseIdentifier: Cellid1)
        collectionView?.register(ProductColorController.self, forCellWithReuseIdentifier: Cellid2)
        collectionView?.register(ProductCapacityController.self, forCellWithReuseIdentifier: Cellid3)
        collectionView?.register(ProductDescriptionView.self, forCellWithReuseIdentifier: Cellid4)
        collectionView?.register(ProductDetails.self, forCellWithReuseIdentifier: Cellid5)
        collectionView?.register(ProductCompanyView.self, forCellWithReuseIdentifier: Cellid6)
        collectionView?.register(AddToCardView.self, forCellWithReuseIdentifier: Cellid7)

        
        
        collectionView?.isScrollEnabled = true
        
        collectionView?.register(thirdMainFooter.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footer)
        collectionView?.register(FirstSubCategryHeaders.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: Headers)
        
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
    
    
    
    
}
