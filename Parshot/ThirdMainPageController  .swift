//
//  ThirdMainPageController  .swift
//  Parshot
//
//  Created by hazem on 9/5/18.
//  Copyright © 2018 hazem. All rights reserved.


import UIKit
class ThirdMainPageController  : FirstMainPageController {
    

    
    
    
    
    ////////// end models variables

    
    //////// hide status bar
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid0, for: indexPath) as! ThirdSliderController
             cell.data = sliderViewModel
            return cell
       
        }
        else  {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid1, for: indexPath) as! ThirdDepartmentController
            
            cell.data = categoryViewModel
            if bodyViewModel.count > 0 {
         //       cell.categorySetting = bodyViewModel[0]
                cell.presenter = presenter
            }
            return cell
        }
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 2
        
    }

    ////// size of the cell
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.item == 0 {
            
            return CGSize(width:collectionView.frame.width ,height:(collectionView.frame.height  * 0.3) - (navigationController?.navigationBar.frame.size.height)!)
            
        }else  {
            
            return CGSize(width:collectionView.frame.width ,height:(collectionView.frame.height  * 0.8) - 80)
            
        }
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: self.footer, for: indexPath as IndexPath) as! thirdMainFooter
     
        if footerViewModel.count > 0 {
            footer.data = footerViewModel[0]
        }
        
        return footer
    }
    
    /////// size for the footer
    override func RegisterCell() {

        collectionView?.register(ThirdSliderController.self, forCellWithReuseIdentifier: Cellid0)
        collectionView?.register(ThirdDepartmentController .self, forCellWithReuseIdentifier: Cellid1)
        collectionView?.register(thirdMainFooter.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footer)
        let logo = UIImage(named: "P A R A S H O T E@1X")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
    }
    
    override func viewDidLoad() {
super.viewDidLoad()
        // setup navBar.....

     
        let layout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout
        layout?.sectionFootersPinToVisibleBounds = true
        
        //////////
         RegisterCell()

        
    }
    

    
}
