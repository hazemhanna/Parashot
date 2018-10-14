//
//  StoreViewModel.swift
//  Parshot
//
//  Created by MAC on 10/12/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import Foundation
import UIKit

struct StoreViewModel {
    
    var name: String?
    var storeSetting: [StoreSettingModel]?
    var design: DesigenModel?
    var Slider: [SliderViewModel]?
    var Header: [HeaderViewModel]?

    init(store: StoreModel) {
        self.Slider =  createCarsViewModels(from : store.storesettings[0].design)
        self.Header =  createHeaderViewModels(from : [store.storesettings[0].design.header])

        self.name = store.name
        self.storeSetting = store.storesettings
        self.design = store.storesettings[0].design
   
        
    }
    
    private func createCarsViewModels(from cars: DesigenModel) -> [SliderViewModel] {
        return cars.sliders.map({return SliderViewModel(slider: $0)}) ?? []
    }
    ///////
    
    private func createHeaderViewModels(from header : [HeaderModel]) -> [HeaderViewModel] {
        return header.map({return HeaderViewModel(header: $0)}) ?? []
    }
    
    
}
