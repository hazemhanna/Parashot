import UIKit
class MyAcountFooter: BaseCell {
    
    override func setupViews() {
        backgroundColor = UIColor.clear
        
        
        addSubview(OrderDetealisBtn)
        OrderDetealisBtn.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        OrderDetealisBtn.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        OrderDetealisBtn.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.7).isActive = true
        OrderDetealisBtn.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.6).isActive = true
        OrderDetealisBtn.isUserInteractionEnabled = true
        ////////
        
        
        
    }
    
    
    let OrderDetealisBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor =  UIColor.rgb(84, green: 0, blue: 121)
        button.setTitle(NSLocalizedString(" تفاصيب الطلبات", comment: "this is name"),for: .normal)
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
