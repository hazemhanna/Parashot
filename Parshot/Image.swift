//
//  Image.swift
//  Parshot
//
//  Created by hazem on 9/3/18.
//  Copyright © 2018 hazem. All rights reserved.
//


import UIKit
let imageCache = NSCache<NSString, UIImage>()

class CustomImageView: UIImageView {
    
    var imageUrlString: String?
    
    func loadImageUsingUrlString(_ urlString: String) {
        
        imageUrlString = urlString
        
        let url = URL(string: urlString)
        
        image = nil
        
        if let imageFromCache = imageCache.object(forKey: urlString as NSString) {
            self.image = imageFromCache
            return
        }
        
        URLSession.shared.dataTask(with: url!, completionHandler: { (data, respones, error) in
            
            if error != nil {
                print(error)
                return
            }
            
            
            DispatchQueue.main.async(execute: {
                
                if let imageToCache =  UIImage(data: data!) {
                    
                    if self.imageUrlString == urlString {
                        
                        self.image = imageToCache
                        imageCache.setObject(imageToCache, forKey: urlString as NSString)
                    }
                }
            })
            
        }).resume()
    }
    
}
