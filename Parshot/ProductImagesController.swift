//
//  SliderController.swift
//  Parshot
//
//  Created by hazem on 9/3/18.
//  Copyright © 2018 hazem. All rights reserved.
//



import UIKit


class ProductImagesController : BaseCell  , UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var Cellid0 = "Cellid0"
    var Cellid1 = "Cellid1"
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 2
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        if indexPath.item == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid0, for: indexPath) as!VericallCollectionView
            return cell
        }
            
        else {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.Cellid1, for: indexPath) as! HorizantalCollectionView
            return cell
        }
    }
    
    
    //////// give to colletionview how many image  in every cell
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        //  return CGSize(width:(collectionView.frame.width ) ,height:frame.height)
        
        
        
        if indexPath.item == 0 {
            
            return CGSize(width:collectionView.frame.width * 0.2  ,height:(collectionView.frame.height ) )
            
        } else  {
            
            return CGSize(width:collectionView.frame.width * 0.8  ,height:(collectionView.frame.height  ))
            
        }
        
        
    }
    
    
    
    
    //////////
    override func setupViews() {
        
        addSubview(collectionView)
        collectionView.centerYAnchor.constraint(equalTo:centerYAnchor).isActive = true
        collectionView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        collectionView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        collectionView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        collectionView.register(VericallCollectionView.self, forCellWithReuseIdentifier: Cellid0)
        collectionView.register(HorizantalCollectionView.self, forCellWithReuseIdentifier: Cellid1)
        collectionView.isScrollEnabled = false
        
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.scrollDirection = .horizontal
            
        }
        
        
    }
    
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.backgroundColor =  UIColor.clear
        cv.layer.rasterizationScale = UIScreen.main.scale
        cv.dataSource = self
        cv.delegate = self
        return cv
    }()
    
    
}




