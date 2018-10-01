
import UIKit


class ImageView : BaseCell {
    
  
    
    
    //////////
    override func setupViews() {
        
     

       addSubview(itemImage)
        itemImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        itemImage.centerXAnchor.constraint(equalTo: centerXAnchor ).isActive = true
        itemImage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.7).isActive = true
        itemImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.6).isActive = true
        
    }
    
   
    let itemImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41356482_234556987221009_3617552121928351744_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
}
