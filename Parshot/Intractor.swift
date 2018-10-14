//
//  FirstMainPageIntractor.swift
//  Parshot
//
//  Created by MAC on 10/5/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import Foundation
import UIKit

protocol CarsInteractorProtocol {
    func getsStore(completion: @escaping (MainData) -> Void)
    func getsCategory(completion: @escaping (DataCategory) -> Void)

}

class CarsInteractor: CarsInteractorProtocol {

    
    
    init() {
        
    }
    func getsCategory(completion: @escaping (DataCategory) -> Void) {

            ApiService.SharedInstance.fetchFeedForUrl(URL: "Categories/GetALLCat.json"){ (data:Data) in
                do {
                    print(data)
                  var Cat  = try JSONDecoder().decode(DataCategory.self, from: data)
                    /// add all store data to sqlite

                    ///////////////
                    DispatchQueue.main.async (execute: {
                        completion(Cat)
                    })
                }     catch let jsonErr {
                    print(jsonErr)
                }
            }

    }
    func getsStore(completion: @escaping (MainData) -> Void) {
        var MainDataVar = [MainData]()
      let StoreData = Store.shared.queryAllStorssByName()
        if StoreData.count > 0 {
             MainDataVar.append(MainData(data:StoreData))
            DispatchQueue.main.async (execute: {
                completion(MainDataVar.first!)
            })
        }else {
            ApiService.SharedInstance.fetchFeedForUrl(URL: "stores/getalluserstoredata/50.json"){ (data:Data) in
                do {
                     MainDataVar.append(try JSONDecoder().decode(MainData.self, from: data))
                    /// add all store data to sqlite
                    Body.shared.addBody(data: MainDataVar[0].data[0].storesettings[0].design.body)
                    footer.shared.addFooter(data: MainDataVar[0].data[0].storesettings[0].design.footer)
                    Header.shared.addHeader(data: MainDataVar[0].data[0].storesettings[0].design.header)
                    Store.shared.addStore(data: MainDataVar[0].data[0] )
                    StorSetting.shared.addStoreSetting(data: MainDataVar[0].data[0].storesettings[0])
                    Design.shared.addDesigen(data: MainDataVar[0].data[0].storesettings[0].design)
                    Slider.shared.addBody(data: [MainDataVar[0].data[0].storesettings[0].design.sliders[0]])
                    ///////////////
                    DispatchQueue.main.async (execute: {
                        completion(MainDataVar.first!)
                    })
                }     catch let jsonErr {
                    print(jsonErr)
                }
            }
        }
}
}
