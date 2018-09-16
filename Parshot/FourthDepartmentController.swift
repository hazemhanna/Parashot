//
//  SecondDepartmentController.swift
//  Parshot
//
//  Created by hazem on 9/4/18.
//  Copyright © 2018 hazem. All rights reserved.
//

//
//  DepartMentController.swift
//  Parshot
//
//  Created by hazem on 9/3/18.
//  Copyright © 2018 hazem. All rights reserved.
//




import UIKit


class FourthDepartmentController  : BaseCell  , UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    
    var cell = "cell"
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.cell, for: indexPath) as! FourthDepartmentView
        
        
        return cell
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: CGFloat((collectionView.frame.size.width / 3.2)-10), height:collectionView.frame.height - 10 )
    }
    
    
    
    
    override func setupViews() {
        addSubview(collectionView)
        collectionView.topAnchor.constraint(equalTo:topAnchor,constant:30).isActive = true
        collectionView.widthAnchor.constraint(equalTo: widthAnchor,multiplier:0.96).isActive = true
        collectionView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        collectionView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        collectionView.register(FourthDepartmentView.self, forCellWithReuseIdentifier: cell)
        
        
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.scrollDirection = .horizontal
            
        }
        
        
        addSubview(namelabel)
        namelabel.bottomAnchor.constraint(equalTo:collectionView.topAnchor,constant : -5).isActive = true
        namelabel.rightAnchor.constraint(equalTo: collectionView.rightAnchor).isActive = true
        
        
        
    }
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.backgroundColor =  UIColor.rgb(230, green: 234, blue: 237)
        cv.layer.rasterizationScale = UIScreen.main.scale
        cv.dataSource = self
        cv.delegate = self
        return cv
    }()
    
    
    
    let namelabel :UILabel = {
        let pl = UILabel()
        pl.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        pl.font = font
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.text = NSLocalizedString("اختر حسب القسم", comment: "this is name")
        return pl
        
    }()
    
    
    
}




