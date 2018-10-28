//
//  MyOrderViewModel.swift
//  Parshot
//
//  Created by hossam ahmed on 10/27/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import Foundation

struct MyOrderViewModel  {
    
    
    var id : Int?
    var   user_id : Int?
    var  product_id: Int?
    var payment_id: Int?
    var store_id: Int?
    var price: String?
    var  order_status: String?
    var  delivry_id: String?
     var created : String?
    var address : String?
    var product : ProductPagesModel?
    var store : ProductStore?
    var delivry : Delivry?
    
    init(MyOrder : MyOrderModel) {
     
        self.id = MyOrder.id
        self.user_id = MyOrder.user_id
        self.product_id = MyOrder.product_id
        self.payment_id = MyOrder.payment_id
        self.store_id  =  MyOrder.store_id
        self.price = MyOrder.price
        self.order_status = MyOrder.order_status
        self.delivry_id = MyOrder.delivry_id
        self.address = MyOrder.address
        self.product = MyOrder.product
        self.store = MyOrder.store
        self.delivry = MyOrder.delivry
        self.created = MyOrder.created 
    }
}
