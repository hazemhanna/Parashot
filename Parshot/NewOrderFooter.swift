import UIKit
class NewOrderFooter: BaseCell {
    
    override func setupViews() {
        backgroundColor = UIColor.clear
        
        
        addSubview(acceptBtn)
        acceptBtn.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        acceptBtn.rightAnchor.constraint(equalTo: rightAnchor,constant : -40 ).isActive = true
        acceptBtn.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.35).isActive = true
        acceptBtn.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.6).isActive = true
        ////////
        
        
        addSubview(refuseBtn)
        refuseBtn.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        refuseBtn.leftAnchor.constraint(equalTo: leftAnchor,constant : 40 ).isActive = true
        refuseBtn.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.35).isActive = true
        refuseBtn.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.6).isActive = true
        
    }
    
    
    let acceptBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor =  UIColor.rgb(84, green: 0, blue: 121)
        button.setTitle(NSLocalizedString(" قبول", comment: "this is name"),for: .normal)
        button.addTarget(self, action: #selector(asd2), for: .touchUpInside)
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        button.titleLabel?.font  = font!
        button.setTitleColor(UIColor.white, for: UIControlState.normal)  ///// how to give it black color and font
        button.layer.cornerRadius = 15
        return button
    }()
    
    @objc func asd2 (){
        
    }
    
    let refuseBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor =  UIColor.red
        button.setTitle(NSLocalizedString(" الغاء", comment: "this is name"),for: .normal)
        button.addTarget(self, action: #selector(asd), for: .touchUpInside)
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        button.titleLabel?.font  = font!
        button.setTitleColor(UIColor.white, for: UIControlState.normal)  ///// how to give it black color and font
        button.layer.cornerRadius = 15
        return button
    }()
    
    @objc func asd (){
        
    
    
    }



}
