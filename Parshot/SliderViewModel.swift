

import Foundation
import UIKit

struct SliderViewModel {
    
    var photo: String?
    init(slider: SlidersModel) {
        var  url = "http://parashote.codesroots.com/library/\(slider.photo)" as? String
        if let imageurl = url {
            self.photo = imageurl
        }


    }

}

