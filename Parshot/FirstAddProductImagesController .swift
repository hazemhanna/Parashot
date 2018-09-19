//
//  SliderController.swift
//  Parshot
//
//  Created by hazem on 9/3/18.
//  Copyright © 2018 hazem. All rights reserved.
//



import UIKit
import DKImagePickerController


class FirstAddProductImagesController  : BaseCell  , UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    var controller : FirstAddProductController?{
        didSet{
            collectionView.reloadData()
        }
    }
    
    var image = [UIImage]()
    var cell = "cell"
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return image.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.cell, for: indexPath) as! FirstAddProductImagesView
        cell.itemImage.image  = image[indexPath.item]
        
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
        
        return CGSize(width:(collectionView.frame.width / 3 ) - 10 ,height:frame.height)

    
    
    }
    
    
    
    
    //////////
    override func setupViews() {
        
        
        addSubview(mainView)
        mainView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
     
        
        
        
        mainView.addSubview(collectionView)
        collectionView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor ).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor,constant : -10  ).isActive = true
        collectionView.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.9).isActive = true
        collectionView.heightAnchor.constraint(equalTo: mainView.heightAnchor,multiplier : 0.5).isActive = true
        
        collectionView.register(FirstAddProductImagesView.self, forCellWithReuseIdentifier: cell)
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.scrollDirection = .horizontal
            
        }
        
        
        mainView.addSubview(circleView)
        circleView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        circleView.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier:0.15).isActive = true
        circleView.bottomAnchor.constraint(equalTo: collectionView.topAnchor,constant : -10 ).isActive = true
        circleView.heightAnchor.constraint(equalTo: circleView.widthAnchor).isActive = true
        circleView.isUserInteractionEnabled = true

        
        mainView.addSubview(horizantalLine)
        horizantalLine.bottomAnchor.constraint(equalTo: circleView.topAnchor ,constant : -5).isActive = true
        horizantalLine.centerXAnchor.constraint(equalTo: mainView.centerXAnchor ).isActive = true
        horizantalLine.widthAnchor.constraint(equalTo: mainView.widthAnchor ).isActive = true
        horizantalLine.heightAnchor.constraint(equalToConstant : 1).isActive = true
        
        
        mainView.addSubview(ProductImagesLabel)
        ProductImagesLabel.bottomAnchor.constraint(equalTo: horizantalLine.topAnchor).isActive = true
        ProductImagesLabel.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -10).isActive = true

     
        
        circleView.addSubview(pruductImage)
        pruductImage.centerXAnchor.constraint(equalTo: circleView.centerXAnchor).isActive = true
        pruductImage.widthAnchor.constraint(equalTo: circleView.widthAnchor,multiplier : 0.8).isActive = true
        pruductImage.centerYAnchor.constraint(equalTo:circleView.centerYAnchor).isActive = true
        pruductImage.heightAnchor.constraint(equalTo: pruductImage.widthAnchor).isActive = true
        self.pruductImage.layer.cornerRadius = self.pruductImage.frame.width/15
        self.pruductImage.clipsToBounds = true
        pruductImage.isUserInteractionEnabled = true

        
        
        pruductImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(switchToImagePickerController)))
        pruductImage.isUserInteractionEnabled = true
        
    }
    
    
    
    //// make
    func switchToImagePickerController (tapGestureRecognizer: UITapGestureRecognizer)
        
    {
     controller?.SwitchToImagePicker()
     }
    
    let  mainView :UIView = {
        let uv = UIView()
        uv.backgroundColor = .white
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        return uv
    }()
    
    let ProductImagesLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" اضافة صورة ", comment: "this is name")
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
    
    
    let  circleView :UIView = {
        let uv = UIView()
        uv.backgroundColor =  UIColor.rgb(230, green: 234, blue: 237)
        uv.layer.cornerRadius = 30
        uv.translatesAutoresizingMaskIntoConstraints = false
        return uv
    }()
    
    
    
    let  pruductImage :UIImageView = {
        let ci = UIImageView(image:#imageLiteral(resourceName: "photo (3)"))
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
        cv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        cv.layer.borderWidth = 1
        return cv
    }()
    
 
}
