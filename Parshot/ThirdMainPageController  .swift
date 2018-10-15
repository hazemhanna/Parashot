//
//  ThirdMainPageController  .swift
//  Parshot
//
//  Created by hazem on 9/5/18.
//  Copyright © 2018 hazem. All rights reserved.


import UIKit
class ThirdMainPageController  :  UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var footer = "footer"
    var Cellid0="Cellid0"
    var Cellid1="Cellid1"
    var Cellid2="Cellid2"
    var Cellid3="Cellid3"
    var Cellid4="Cellid4"
    
    ////// models variables
      var presenter: CarsPresenterProtocol!
     var sliderViewModel = [SliderViewModel]()
      var storeViewModel = [StoreViewModel]()
      var headerViewModel = [HeaderViewModel]()
      var footerViewModel  = [FooterViewModel]()
     var categoryViewModel = [CategoryViewModel]()
    
    
    
    
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
     
        if footerViewModel.count > 0 {
            footer.data = footerViewModel[0]
        }
        
        return footer
    }
    
    /////// size for the footer
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        
        return CGSize(width:collectionView.frame.width , height: collectionView.frame.height  * 0.08)
        
    }
    let OrderImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "shopping-cart (1)"))
        return ci
        
    }()
    let OrderImage2:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "shopping-cart (1)"))
        return ci
        
    }()
    
    override func viewDidLoad() {
        collectionView?.contentInset = UIEdgeInsetsMake(0, 0, 0, 0)
        collectionView?.backgroundColor = UIColor.rgb(252, green: 244, blue: 246)
        collectionView?.register(ThirdSliderController.self, forCellWithReuseIdentifier: Cellid0)
        collectionView?.register(ThirdDepartmentController .self, forCellWithReuseIdentifier: Cellid1)
        
        collectionView?.register(thirdMainFooter.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footer)
        collectionView?.isScrollEnabled = false
        
        
        presenter.ShowCategory{ (viewModels) in
            self.categoryViewModel = viewModels
            DispatchQueue.main.async (execute: {
                self.collectionView?.reloadData()
            })
        }
        // setup navBar.....
        presenter.showCars { (viewModels) in
          //  self.storeViewModel = viewModels
             self.headerViewModel = viewModels[0].Header!
             self.footerViewModel = viewModels[0].footer!
             self.sliderViewModel = viewModels[0].Slider!
            
            self.navigationController?.navigationBar.barTintColor = UIColor.rgb(CGFloat(self.headerViewModel[0].red!), green: CGFloat(self.headerViewModel[0].green!), blue: CGFloat(self.headerViewModel[0].blue!))
           self.OrderImage.loadImageUsingUrlStringToUIImage(self.headerViewModel[0].right_icon!){(image:UIImage)in
                
            let StarButton = UIBarButtonItem(image:image.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(self.star))
                self.navigationItem.rightBarButtonItem = StarButton
                
                
                
            
                
                
            }
            self.OrderImage2.loadImageUsingUrlStringToUIImage(self.headerViewModel[0].left_icon!){(images:UIImage)in

            
            let chatButton = UIBarButtonItem(image:images.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(self.chat))
            self.navigationItem.leftBarButtonItem = chatButton
            }
            
            
            DispatchQueue.main.async (execute: {
                self.collectionView?.reloadData()
            })
       }
     
        let layout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout
        layout?.sectionFootersPinToVisibleBounds = true
        
        //////////
        
        let logo = UIImage(named: "P A R A S H O T E@1X")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
        
    }
    
    
    func chat()  {
        
    }
    
    func star ()  {
        
    }
    
}
