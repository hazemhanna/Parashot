//
//  SecondSubCategry.swift
//  Parshot
//
//  Created by hazem on 9/8/18.
//  Copyright © 2018 hazem. All rights reserved.
//

//
//  MainSubjectController.swift
//  Boshra
//
//  Created by hazem on 8/26/18.
//  Copyright © 2018 hazem. All rights reserved.
//


import UIKit


class DellerAccountController : UICollectionViewController , UICollectionViewDelegateFlowLayout {

    
    var Headers = "Headers"
    var Cellid0 = "Cellid0"

     var arabicList = [(title: " الشكاوي", artwork:"0"), (title: " اعدادات ", artwork:"1"), (title: " المنتجات",artwork:"2") ,(title: " احصايات",artwork:"3"),(title: " طبلباتي",artwork:"4"),(title: " المحادثات",artwork:"5"), (title: " الملف الشخصي", artwork:"6"),(title: "المصوريين",artwork:"7"),(title: " المصممين", artwork:"8"),(title: " العملاط", artwork:"9"),(title: " الشحن والتوصيل", artwork:"10")]
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
       
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cellid0, for: indexPath) as! DellerAccountView
        
        let image = arabicList[indexPath.item].artwork
        cell.departmentImage.image = UIImage(named: image)
        cell.namelabel.text = arabicList[indexPath.item].title

        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 11
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    ////// size of the cell
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: CGFloat((collectionView.frame.size.width / 3)), height:collectionView.frame.height * 0.17)
        
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: self.Headers, for: indexPath as IndexPath) as! DellerHeader
            header.marketName.text = " حساب التاجر "
            return header
        
    }
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width:collectionView.frame.width , height: collectionView.frame.height  * 0.2)
    }
    
    override func viewDidLoad() {
        
        collectionView?.contentInset = UIEdgeInsetsMake(0, 0, 0, 0)
        collectionView?.backgroundColor = UIColor.rgb(252, green: 244, blue: 246)
        collectionView?.register(DellerAccountView.self, forCellWithReuseIdentifier: Cellid0)
        
        collectionView?.isScrollEnabled = true
        collectionView?.register(DellerHeader.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: Headers)
        
        // setup navBar.....
        navigationController?.navigationBar.barTintColor = UIColor.rgb(252, green: 244, blue: 246)
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        let layout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout
        layout?.sectionFootersPinToVisibleBounds = true
        
        
        //////////
        let logo = UIImage(named: "P A R A S H O T E@1X")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
        
        
    }
    
}
