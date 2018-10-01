import UIKit

class MyAcountView4 : BaseCell,FloatRatingViewDelegate {
    
    
    override func setupViews() {
        
        
        backgroundColor = UIColor.clear
        
        
        addSubview(MainView)
        MainView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        MainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        MainView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        MainView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        
        
        
        
        
        MainView.addSubview(IconImage)
        IconImage.topAnchor.constraint(equalTo: MainView.topAnchor,constant : 10).isActive = true
        IconImage.rightAnchor.constraint(equalTo: MainView.rightAnchor,constant : -10).isActive = true
        IconImage.widthAnchor.constraint(equalTo: MainView.widthAnchor,multiplier : 0.07).isActive = true
        IconImage.heightAnchor.constraint(equalTo: MainView.heightAnchor,multiplier : 0.3).isActive = true
        
        
        MainView.addSubview(lineView)
        lineView.topAnchor.constraint(equalTo: IconImage.topAnchor).isActive = true
        lineView.rightAnchor.constraint(equalTo: IconImage.leftAnchor,constant : -10).isActive = true
        lineView.widthAnchor.constraint(equalToConstant: 1).isActive = true
        lineView.heightAnchor.constraint(equalTo: IconImage.heightAnchor).isActive = true
        
        
        ///////////
        MainView.addSubview(headLabe)
        headLabe.topAnchor.constraint(equalTo: IconImage.topAnchor,constant : 5).isActive = true
        headLabe.rightAnchor.constraint(equalTo: lineView.leftAnchor,constant : -10).isActive = true
        
        
        MainView.addSubview(creditCardBtn)
        creditCardBtn.topAnchor.constraint(equalTo: headLabe.bottomAnchor,constant : 15).isActive = true
        creditCardBtn.rightAnchor.constraint(equalTo: lineView.leftAnchor,constant : -10).isActive = true
        creditCardBtn.widthAnchor.constraint(equalTo:  MainView.widthAnchor,multiplier : 0.35).isActive = true
        creditCardBtn.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        MainView.addSubview(banktBtn)
        banktBtn.centerYAnchor.constraint(equalTo: creditCardBtn.centerYAnchor).isActive = true
        banktBtn.rightAnchor.constraint(equalTo: creditCardBtn.leftAnchor,constant : -10).isActive = true
        banktBtn.widthAnchor.constraint(equalTo:  MainView.widthAnchor,multiplier : 0.35).isActive = true
        banktBtn.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        
    }
    
    ///////  first View
    
    let  MainView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.white
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        uv.layer.cornerRadius = 5

        return uv
    }()
    
    
    let IconImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "payment-method"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    
    let  lineView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(84, green: 0, blue: 121)
        uv.translatesAutoresizingMaskIntoConstraints = false
        return uv
    }()
    
    
    
    
    
    
    let headLabe :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" تسديد حساب التطبيق", comment: "this is name")
        return NL
        
    }()
    
    
    let creditCardBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.rgb(235, green: 69, blue: 105)
        button.setTitle(NSLocalizedString(" بطاقة اتمانية", comment: "this is name"),for: .normal)
        button.addTarget(self, action: #selector(asd), for: .touchUpInside)
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        button.titleLabel?.font  = font!
        button.setTitleColor(UIColor.white, for: UIControlState.normal)  ///// how to give it black color and font
        button.layer.cornerRadius = 10
        return button
    }()
    
    @objc func asd (){
        
        
    }
    

    
    let  banktBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.rgb(235, green: 69, blue: 105)
        button.setTitle(NSLocalizedString(" تحويل بنكي", comment: "this is name"),for: .normal)
        button.addTarget(self, action: #selector(asd2), for: .touchUpInside)
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        button.titleLabel?.font  = font!
        button.setTitleColor(UIColor.white, for: UIControlState.normal)  ///// how to give it black color and font
        button.layer.cornerRadius = 10
        return button
    }()
    
    @objc func asd2 (){
        
        
    }
    

    
    
    
    
    
}
