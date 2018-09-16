//
//  SecondSubCategryController.swift
//  Parshot
//
//  Created by hazem on 9/8/18.
//  Copyright © 2018 hazem. All rights reserved.
//

//
//  DepartMentController.swift
//  Parshot
//
//  Created by hazem on 9/3/18.
//  Copyright © 2018 hazem. All rights reserved.
//



//
//  subcontroller.swift
//  Chalihats
//
//  Created by hazem on 7/17/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit


class SecondSubCategryController : BaseCell  , UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var cell = "cell"
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.cell, for: indexPath) as! SecondSubCategryView
        
        
        return cell
        
    }
    
    
    //////// give to colletionview how many image  in every cell
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: CGFloat((collectionView.frame.size.width / 2)-5), height:collectionView.frame.height * 0.45)
    }
    
    ////////
    override func setupViews() {
        
        addSubview(collectionView)
        collectionView.topAnchor.constraint(equalTo:topAnchor,constant : 15).isActive = true
        collectionView.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.97).isActive = true
        collectionView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        collectionView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        collectionView.register(SecondSubCategryView.self, forCellWithReuseIdentifier: cell)
        
    }
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.backgroundColor = UIColor.rgb(252, green: 244, blue: 246)
        cv.layer.rasterizationScale = UIScreen.main.scale
        cv.dataSource = self
        cv.delegate = self
        return cv
        
        
    }()
}


