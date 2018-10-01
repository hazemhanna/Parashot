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


class SecondMainMenuControler : UICollectionViewController , UICollectionViewDelegateFlowLayout {
    
    
    var Headers = "Headers"
    var Cellid0 = "Cellid0"
    var footer = "footer"
    
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid0, for: indexPath) as! SecondMenuController
        
        
        
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 9
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    ////// size of the cell
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: CGFloat(collectionView.frame.size.width ), height:collectionView.frame.height)
        
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionElementKindSectionHeader:
            
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: self.Headers, for: indexPath as IndexPath) as! MenuHeader
            return header
            
        case UICollectionElementKindSectionFooter:
            
            let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier:  footer, for: indexPath as IndexPath) as! MainFooter
            return footerView
            
        default:
            
            fatalError("Unexpected element kind")
        }
        
    }
    
    /////// size for the footer
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        
        return CGSize(width:collectionView.frame.width , height: collectionView.frame.height  * 0.08)
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width:collectionView.frame.width , height: collectionView.frame.height  * 0.2)
    }
    
    override func viewDidLoad() {
        
        collectionView?.contentInset = UIEdgeInsetsMake(0, 0, 0, 0)
        collectionView?.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        collectionView?.register(SecondMenuController.self, forCellWithReuseIdentifier: Cellid0)
        collectionView?.isScrollEnabled = true
        collectionView?.register(MenuHeader.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: Headers)
        collectionView?.register(MainFooter.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footer)
        collectionView?.isScrollEnabled = false
        // setup navBar.....
        navigationController?.navigationBar.barTintColor = UIColor.rgb(99, green: 27, blue: 103)
        navigationItem.title = NSLocalizedString(" القائمة", comment: "this is name")
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        let layout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout
        layout?.sectionFootersPinToVisibleBounds = true
        
    }
    
}
