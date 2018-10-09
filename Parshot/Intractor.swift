//
//  FirstMainPageIntractor.swift
//  Parshot
//
//  Created by MAC on 10/5/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

protocol CarsInteractorProtocol {
    func getsStore(completion: @escaping (MainData) -> Void)
}
public protocol Persistable {
    associatedtype ManagedObject: RealmSwift.Object
    init(managedObject: ManagedObject)
    func managedObject() -> ManagedObject
}
class CarsInteractor: CarsInteractorProtocol {

    
    
    init() {
        
    }
    
    func getsStore(completion: @escaping (MainData) -> Void) {
        
        ApiService.SharedInstance.fetchFeedForUrl(URL: "stores/getalluserstoredata/50.json"){ (data:Data) in
            
            do {
                let Sliders = try JSONDecoder().decode(MainData.self, from: data)
                
                DispatchQueue.main.async (execute: {
                    completion(Sliders)
                })
                
                
            }     catch let jsonErr {
                print(jsonErr)
        }
        
    }
}
}
