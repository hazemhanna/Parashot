import UIKit

class MyAcountView2 : BaseCell {
    
    
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
        
        
        MainView.addSubview(acceptOrderlabel)
        acceptOrderlabel.topAnchor.constraint(equalTo: headLabe.bottomAnchor,constant : 20).isActive = true
        acceptOrderlabel.rightAnchor.constraint(equalTo: lineView.leftAnchor,constant : -20).isActive = true
        
        
        
        MainView.addSubview(acceptOrderValuelabel)
        acceptOrderValuelabel.centerYAnchor.constraint(equalTo: acceptOrderlabel.centerYAnchor ).isActive = true
        acceptOrderValuelabel.rightAnchor.constraint(equalTo: acceptOrderlabel.leftAnchor,constant : -30).isActive = true
        
        
        MainView.addSubview(acceptCostlabel)
        acceptCostlabel.centerYAnchor.constraint(equalTo: acceptOrderValuelabel.centerYAnchor ).isActive = true
        acceptCostlabel.rightAnchor.constraint(equalTo: acceptOrderValuelabel.leftAnchor,constant : -20).isActive = true
        
        MainView.addSubview(acceptCostValuelabel)
        acceptCostValuelabel.centerYAnchor.constraint(equalTo: acceptCostlabel.centerYAnchor ).isActive = true
        acceptCostValuelabel.rightAnchor.constraint(equalTo: acceptCostlabel.leftAnchor,constant : -20).isActive = true
        
        
        
        MainView.addSubview(refuselabel)
        refuselabel.topAnchor.constraint(equalTo: acceptOrderlabel.bottomAnchor,constant : 10).isActive = true
        refuselabel.rightAnchor.constraint(equalTo: lineView.leftAnchor,constant : -20).isActive = true
        
        
        MainView.addSubview(refuserValuelabel)
        refuserValuelabel.centerYAnchor.constraint(equalTo: refuselabel.centerYAnchor ).isActive = true
        refuserValuelabel.rightAnchor.constraint(equalTo: acceptOrderValuelabel.rightAnchor).isActive = true
        
        
        MainView.addSubview(refuseCostlabel)
        refuseCostlabel.centerYAnchor.constraint(equalTo: refuserValuelabel.centerYAnchor ).isActive = true
        refuseCostlabel.rightAnchor.constraint(equalTo: acceptCostlabel.rightAnchor).isActive = true
        
        MainView.addSubview(refuseCostValuelabel)
        refuseCostValuelabel.centerYAnchor.constraint(equalTo: refuseCostlabel.centerYAnchor ).isActive = true
        refuseCostValuelabel.rightAnchor.constraint(equalTo: acceptCostValuelabel.rightAnchor).isActive = true
        
        
        
        
    }
    
    ///////  first View
    
    let  MainView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.white
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        uv.layer.cornerRadius = 10
        
        return uv
    }()
    
    
    let IconImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "approve-invoice"))
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
        NL.text = NSLocalizedString("مراجعة حالات الطلبات ", comment: "this is name")
        return NL
        
    }()
    
    
    let  acceptOrderlabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" طلبات مقبولة ", comment: "this is name")
        return NL
        
    }()
    
    let acceptOrderValuelabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("٤٥ طلب", comment: "this is name")
        return NL
        
    }()
    
    let  acceptCostlabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("بقيمة", comment: "this is name")
        return NL
        
    }()
    
    
    let acceptCostValuelabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("١٣٠ ريال", comment: "this is name")
        return NL
        
    }()
    
    
    let refuselabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" طلبات ملغاة", comment: "this is name")
        return NL
        
    }()
    
    let refuserValuelabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("٤٥ طلب", comment: "this is name")
        return NL
        
    }()
    
    let refuseCostlabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("بقيمة", comment: "this is name")
        return NL
        
    }()
    
    
    let refuseCostValuelabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("١٣٠ ريال", comment: "this is name")
        return NL
        
    }()
    
    
    
    
    
    
    
    
}
