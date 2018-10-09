//
//  StoreModel.swift
//  Parshot
//
//  Created by hossam ahmed on 10/6/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit
import Foundation

struct StoreModel   :  Decodable {

    let id: Int
    let name: String
    let bank_accounts: String
    let phone: String
    let alternative_phone: String
    let commercial_register_photo: String
    let commercial_register_number: Int
    let link: String
    let description: String
    let birthdate: String
    let city_id: Int
    let branches: Int
    let subcat_id: Int
    let logodesign_id: Int
    let visible: String
    let user_id: Int
    let design_id: Int
    let template_id: Int
    let storesettings : [StoreSettingModel]
    
    
}



struct SliderModelss : Decodable {
    let id: Int
    let name: String
}





