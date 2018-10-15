//
//  SliderController.swift
//  Parshot
//
//  Created by hazem on 9/3/18.
//  Copyright © 2018 hazem. All rights reserved.
//



import UIKit


class ThirdSliderController : BaseCell  , UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var cell = "cell"
    var timer:Timer? = nil
    
    var data:[SliderViewModel]?{
        
        
        didSet{
            collectionView.reloadData()
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return (data?.count)!
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.cell, for: indexPath) as! ThirdSliderView
        
        if data![indexPath.item].photo != nil {
            cell.ItemImage.loadImageUsingUrlString(self.data![indexPath.item].photo!)
        }

        return cell
        
    }
    
    
    //////// give to colletionview how many image  in every cell
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        //return CGSize(width:(collectionView.frame.width ) ,height:frame.height)
    
        return CGSize(width: CGFloat((collectionView.frame.size.width / 1.2)-10), height:collectionView.frame.height)

    
    }

    
    //////////
    override func setupViews() {
        
        addSubview(collectionView)
        collectionView.centerYAnchor.constraint(equalTo:centerYAnchor).isActive = true
        collectionView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        collectionView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        collectionView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        collectionView.register(ThirdSliderView.self, forCellWithReuseIdentifier: cell)
        
        
        
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.scrollDirection = .horizontal
            
        }
        
       setTimer()
        
    }
    
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
    
//  Invokes Timer to start Automatic Animation with repeat enabled
    func setTimer() {
        let _ = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(SliderController.autoScroll), userInfo: nil, repeats: true)

}
///// make my collectionview scroll automatic
    var x = 1
    
    @objc func autoScroll() {
        if self.x < (self.data?.count)! {
            let indexPath = IndexPath(item: x, section: 0)
            self.collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
            self.x = self.x + 1
        } else {
            self.x = 0
            self.collectionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: .centeredHorizontally, animated: true)
        }
    }
    
    
}




