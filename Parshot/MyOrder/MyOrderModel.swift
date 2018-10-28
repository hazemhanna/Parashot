//
//  MyOrderModel.swift
//  Parshot
//
//  Created by hossam ahmed on 10/27/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import Foundation

struct ObjectMyOrder: Decodable {
    let data: [MyOrderModel]
}

struct MyOrderModel: Decodable {
    
     var id : Int?
     var   user_id : Int?
     var  product_id: Int?
     var payment_id: Int?
     var store_id: Int?
     var price: String?
     var  order_status: String?
     var  delivry_id: String?
     var address : String?
    var created : String?
     var product : ProductPagesModel?
    var store : ProductStore?
    var delivry : Delivry?

}

struct Delivry: Decodable {
    let id: Int
    let name: String
}

