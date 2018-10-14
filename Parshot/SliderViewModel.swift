

import Foundation
import UIKit

struct SliderViewModel {
    
    var photo: String?
    var Image: CustomImageView?

    init(slider: SlidersModel) {
        self.photo = slider.photo
       GetImageFromUrl()
    }
    func GetImageFromUrl() {
      
        var  url = "http://parashote.codesroots.com/library/\(self.photo!)" as? String
        if let imageurl = url {
            Image?.loadImageUsingUrlString(imageurl)
        }
    }
}

