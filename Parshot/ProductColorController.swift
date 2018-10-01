//
//  SliderController.swift
//  Parshot
//
//  Created by hazem on 9/3/18.
//  Copyright © 2018 hazem. All rights reserved.
//



import UIKit


class ProductColorController : BaseCell  , UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var cell = "cell"
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 15
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.cell, for: indexPath) as! ProductColorView
        
        return cell
        
    }
    
    
    //////// give to colletionview how many image  in every cell
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width:(collectionView.frame.width / 8 ) - 10 ,height:frame.height)
    }
    
    
    
    
    //////////
    override func setupViews() {
        
        
        
        addSubview(collectionView)
        collectionView.centerYAnchor.constraint(equalTo:centerYAnchor).isActive = true
        collectionView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        collectionView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        collectionView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        collectionView.register(ProductColorView.self, forCellWithReuseIdentifier: cell)
        
        
        
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.scrollDirection = .horizontal
            
        }
        
        
        
        addSubview(ProductColor)
        ProductColor.rightAnchor.constraint(equalTo: rightAnchor,constant : -10).isActive = true
        ProductColor.bottomAnchor.constraint(equalTo: collectionView.topAnchor,constant : 15).isActive = true
        
        addSubview(lineView)
        lineView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        lineView.topAnchor.constraint(equalTo: ProductColor.bottomAnchor, constant : 5).isActive = true
        lineView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        lineView.heightAnchor.constraint(equalToConstant: 1).isActive = true

        
        
    }
    
    
    
    
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.backgroundColor =  UIColor.white
        cv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        cv.layer.borderWidth = 1
        cv.layer.rasterizationScale = UIScreen.main.scale
        cv.dataSource = self
        cv.delegate = self
        return cv
    }()
    
    
    
    
    let ProductColor :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("اختر لون المنتج ", comment: "this is name")
        return NL
        
    }()
    
   
    
    
    
    let  lineView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        uv.translatesAutoresizingMaskIntoConstraints = false
        return uv
    }()
    
    
    
    
    
}




