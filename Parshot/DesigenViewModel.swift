//
//  DesigenViewModel.swift
//  Parshot
//
//  Created by hossam ahmed on 10/13/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import Foundation
import UIKit

struct DesigenViewModel {
    
    var header_id: Int?
    var body_id: Int?
    var footer_id: Int?
    var footer : FooterModel?
    var body : BodyModel?
    var header : HeaderViewModel?
 
    
    
    init(desigen  : DesigenModel) {
        
     self.header_id = desigen.header_id
        self.body_id = desigen.body_id
        self.footer_id = desigen.footer_id
        self.body = desigen.body
        self.footer = desigen.footer
        
        
        
    }
    
}
