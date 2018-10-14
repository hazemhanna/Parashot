//
//  DesigenModel.swift
//  Parshot
//
//  Created by hossam ahmed on 10/6/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit

struct DesigenModel : Decodable  {
    
    
  //   var id: Int
    var header_id: Int
    var body_id: Int
    var footer_id: Int
    var footer : FooterModel
    var body : BodyModel
    var header : HeaderModel
    var sliders : [SlidersModel]
    
    
}


