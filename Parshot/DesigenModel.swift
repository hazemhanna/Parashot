//
//  DesigenModel.swift
//  Parshot
//
//  Created by hossam ahmed on 10/6/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit

struct DesigenModel : Decodable  {
    
    
   // let id: Int
    let header_id: Int
    let body_id: Int
    let footer_id: Int
    let footer : FooterModel
    let body : BodyModel
    let header : HeaderModel
    let sliders : [SlidersModel]

    
}


