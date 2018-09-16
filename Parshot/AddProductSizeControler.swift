//
//  SliderController.swift
//  Parshot
//
//  Created by hazem on 9/3/18.
//  Copyright © 2018 hazem. All rights reserved.
//



import UIKit


class AddProductSizeControler : BaseCell  , UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var cell = "cell"
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 6
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.cell, for: indexPath) as! AddProductSizeView
        
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
        
        return CGSize(width:(collectionView.frame.width / 2 ) ,height:frame.height)
    }
    
    
    
    
    //////////
    override func setupViews() {
        
        addSubview(mainView)
        mainView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        
        
        mainView.addSubview(ProductSizeLabel)
        ProductSizeLabel.topAnchor.constraint(equalTo:mainView.topAnchor,constant : 5).isActive = true
        ProductSizeLabel.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -10).isActive = true
        
        
        
        
        mainView.addSubview(horizantalLine)
        horizantalLine.topAnchor.constraint(equalTo: ProductSizeLabel.bottomAnchor,constant : 5).isActive = true
        horizantalLine.centerXAnchor.constraint(equalTo: mainView.centerXAnchor ).isActive = true
        horizantalLine.widthAnchor.constraint(equalTo: mainView.widthAnchor ).isActive = true
        horizantalLine.heightAnchor.constraint(equalToConstant : 1).isActive = true
        
        
        mainView.addSubview(addSizeImage)
        addSizeImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        addSizeImage.leftAnchor.constraint(equalTo: mainView.leftAnchor,constant : 10).isActive = true
        addSizeImage.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.05 ).isActive = true
        addSizeImage.heightAnchor.constraint(equalTo : heightAnchor,multiplier : 0.2).isActive = true
        
        
        mainView.addSubview(collectionView)
        collectionView.topAnchor.constraint(equalTo:horizantalLine.bottomAnchor,constant : 10).isActive = true
        collectionView.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.8).isActive = true
        collectionView.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant  : -5 ).isActive = true
        collectionView.heightAnchor.constraint(equalTo: mainView.heightAnchor,multiplier : 0.5).isActive = true
        
        collectionView.register(AddProductSizeView.self, forCellWithReuseIdentifier: cell)
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.scrollDirection = .horizontal
            
        }
  
    }
    
    
    
    
    
    
    
    
    
    
    let  mainView :UIView = {
        let uv = UIView()
        uv.backgroundColor = .white
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        return uv
    }()
    
    let ProductSizeLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("  الوان المنتج  ", comment: "this is name")
        return NL
        
    }()
    
    
    let  horizantalLine  :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 0.5
        return uv
    }()
 
    
    
    let  addSizeImage :UIImageView = {
        let ci = UIImageView(image:#imageLiteral(resourceName: "41782963_971523843049624_6235180503809392640_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.backgroundColor =  UIColor.white
        cv.layer.rasterizationScale = UIScreen.main.scale
        cv.dataSource = self
        cv.delegate = self
       
        return cv
    }()

    
}



