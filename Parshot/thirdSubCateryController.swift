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


class thirdSubCateryController : ThirdMainPageController {
    
    var cell = "cell"
    var Headers = "Headers"
    
    
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return (categoryViewModel[0].subCategry?.count)!
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.cell, for: indexPath) as! ThirdSubCategryView
        
        cell.data = categoryViewModel[0].subCategry
        cell.itemName.text = categoryViewModel[0].subCategry![indexPath.item].name!
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width:collectionView.frame.width-10  , height: collectionView.frame.height * 0.45 - 50)
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionElementKindSectionHeader:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: self.Headers, for: indexPath as IndexPath) as! FirstSubCategryHeaders
            return header
            
        case UICollectionElementKindSectionFooter:
            
            let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier:  footer, for: indexPath as IndexPath) as! thirdMainFooter
            return footerView
            
        default:
            
            fatalError("Unexpected element kind")
        }
        
    }
    
    /////// size for the footer

    
    /////// give header size
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width:collectionView.frame.width , height: collectionView.frame.height  * 0.15 )
    }
    
    
    override func RegisterCell() {
        collectionView?.register(ThirdSubCategryView.self, forCellWithReuseIdentifier: cell)
        collectionView?.register(thirdMainFooter.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footer)
        collectionView?.register(FirstSubCategryHeaders.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: Headers)

        collectionView?.isScrollEnabled = true
        
        let layout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout
        layout?.sectionFootersPinToVisibleBounds = true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    
    
    
    
    }
   
    
}
