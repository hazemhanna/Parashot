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


class DepartMentController : BaseCell  , UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var cell = "cell"

    var data:[CategoryViewModel]?{


        didSet{
            collectionView.reloadData()
        }
    }
    var categorySetting:BodyViewModel?{


        didSet{
            collectionView.reloadData()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return (data?.count)!
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.cell, for: indexPath) as! DepartmentView
        if data![indexPath.item].photo != nil {
            cell.departmentImage.loadImageUsingUrlString(self.data![indexPath.item].photo!)
        }
        cell.namelabel.text = self.data![indexPath.item].name!
        cell.Settingdata =  self.categorySetting
        return cell
        
    }
    
    
    //////// give to colletionview how many image  in every cell
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 15
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: CGFloat((collectionView.frame.size.width / 3)-10), height:collectionView.frame.height * 0.27)
    }
   
    ////////
    override func setupViews() {
        
        addSubview(collectionView)
        collectionView.topAnchor.constraint(equalTo:topAnchor,constant : 10).isActive = true
        collectionView.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.95).isActive = true
        collectionView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        collectionView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        collectionView.register(DepartmentView.self, forCellWithReuseIdentifier: cell)
        
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
}



