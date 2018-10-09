//
//  StoreSetting.swift
//  Parshot
//
//  Created by hossam ahmed on 10/6/18.
//  Copyright © 2018 hazem. All rights reserved.
//


import UIKit

struct  StoreSettingModel : Decodable {
    
    var id: Int
    var store_id: Int
    var payment_id: Int
    var design_id: Int
    var font: String
    var first_splash: String
    var second_splash: String
    var third_splash: String
    var forth_splash: String
    var longitude: Int
    var latitude: Int
    var logo: String
    var open_time: String
    var close_time: String
    var update_: String
    var design :DesigenModel

}














