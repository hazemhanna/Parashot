//
//  SliderModel.swift
//  Parshot
//
//  Created by MAC on 9/23/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit



import Foundation
struct MainData: Decodable {
    let data: [SliderModel]
}
struct SliderModel: Decodable {
    let id: Int
    let name: String
}

