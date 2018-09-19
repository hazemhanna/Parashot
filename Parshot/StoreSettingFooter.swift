import UIKit
class StoreSettingFooter: BaseCell {
    
    override func setupViews() {
        backgroundColor = UIColor.clear
        
        
        addSubview(savetBtn)
        savetBtn.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        savetBtn.centerXAnchor.constraint(equalTo: centerXAnchor ).isActive = true
        savetBtn.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.8).isActive = true
        savetBtn.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.6).isActive = true
        ////////
        
        
    }
    
    
    let savetBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor =  UIColor.rgb(84, green: 0, blue: 121)
        button.setTitle(NSLocalizedString(" حفظ", comment: "this is name"),for: .normal)
        button.addTarget(self, action: #selector(asd2), for: .touchUpInside)
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        button.titleLabel?.font  = font!
        button.setTitleColor(UIColor.white, for: UIControlState.normal)  ///// how to give it black color and font
        button.layer.cornerRadius = 15
        return button
    }()
    
    @objc func asd2 (){
        
    }
    
  
    
}
