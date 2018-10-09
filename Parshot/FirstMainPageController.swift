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
    
    var presenter: CarsPresenterProtocol?
    var viewModels: [SliderViewModel] = []
    ////////// end models variables
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid0, for: indexPath) as! SliderController
            return cell
        }
        else  {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid1, for: indexPath) as! DepartMentController
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
        
        return footer
    }
    
    /////// size for the footer
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        
        return CGSize(width:collectionView.frame.width , height: collectionView.frame.height  * 0.08)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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
        
        presenter?.showCars { (viewModels) in
            self.viewModels = viewModels
            
        }
    }
    
    
    func chat()  {
        
    }
    
    func star ()  {
        
    }
    //////////// Api service Functions
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //////////// End Api Service Function
}


