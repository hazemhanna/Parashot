//
//  MainPageController1.swift
//  Parshot
//
//  Created by hazem on 9/3/18.
//  Copyright © 2018 hazem. All rights reserved.
//


import UIKit


class FirstMainPageController:  UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var footer = "footer"
    var Cellid0="Cellid0"
    var Cellid1="Cellid1"
    var Cellid2="Cellid2"
    var Cellid3="Cellid3"
    var Cellid4="Cellid4"
    
    ////// models variables
    var presenter: CarsPresenterProtocol!
    var storeViewModel = [StoreViewModel]()
    var sliderViewModel = [SliderViewModel]()
    var headerViewModel = [HeaderViewModel]()
    var categoryViewModel = [CategoryViewModel]()
    var bodyViewModel = [BodyViewModel]()
     var footerViewModel  = [FooterViewModel]()
    

////////// end models variables
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid0, for: indexPath) as! SliderController
            cell.data = sliderViewModel
            return cell
        }
        else  {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid1, for: indexPath) as! DepartMentController
            if bodyViewModel.count > 0 {
            cell.categorySetting = bodyViewModel[0]
            }
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
            
            return CGSize(width:collectionView.frame.width ,height:(collectionView.frame.height  * 0.7) - 80)
            
        }
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: self.footer, for: indexPath as IndexPath) as! MainFooter
        if footerViewModel.count > 0 {
            footer.data = footerViewModel[0]
        }
        return footer
    }
    
    /////// size for the footer
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        
        return CGSize(width:collectionView.frame.width , height: collectionView.frame.height  * 0.08)
        
    }
    

    
    override func viewDidLoad() {
        
       
        collectionView?.contentInset = UIEdgeInsetsMake(0, 0, 0, 0)
        collectionView?.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        collectionView?.register(SliderController.self, forCellWithReuseIdentifier: Cellid0)
        collectionView?.register(DepartMentController.self, forCellWithReuseIdentifier: Cellid1)
   
        collectionView?.register(MainFooter.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footer)
        collectionView?.isScrollEnabled = false
        
        // setup navBar.....
        navigationController?.navigationBar.barTintColor = UIColor.rgb(99, green: 27, blue: 103)

        navigationItem.title = NSLocalizedString("parashot", comment: "this is name")
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        // casting is required because UICollectionViewLayout doesn't offer header pin. Its feature of UICollectionViewFlowLayout
        let layout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout
        layout?.sectionFootersPinToVisibleBounds = true
        
     
        
        let StarButton = UIBarButtonItem(image: UIImage(named: "nav_more_icon")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(star))
        navigationItem.rightBarButtonItem = StarButton
        
        
        
        let chatButton = UIBarButtonItem(image: UIImage(named: "nav_more_icon")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(chat))
        navigationItem.leftBarButtonItem = chatButton
        
        presenter.ShowCategory{ (viewModels) in
  self.categoryViewModel = viewModels
            DispatchQueue.main.async (execute: {
                self.collectionView?.reloadData()
            })
        }
        presenter.showCars { (viewModels) in
          self.storeViewModel = viewModels
            self.sliderViewModel = viewModels[0].Slider!
            self.headerViewModel = viewModels[0].Header!
            self.footerViewModel = viewModels[0].footer!
            self.bodyViewModel = viewModels[0].Body!

            self.navigationController?.navigationBar.barTintColor = UIColor.rgb(CGFloat(self.headerViewModel[0].red!), green: CGFloat(self.headerViewModel[0].green!), blue: CGFloat(self.headerViewModel[0].blue!))

            self.navigationItem.title = NSLocalizedString("parashot", comment: "this is name")
            self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
            DispatchQueue.main.async (execute: {
                self.collectionView?.reloadData()
            })
        }

        
    }
    
    
    func chat()  {
        
    }
    
    func star ()  {
        
    }
    //////////// Api service Functions
    //////////// End Api Service Function
}
