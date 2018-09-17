import UIKit

class MyAcountView1 : BaseCell {
    
    
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
      
        
        MainView.addSubview(weeklabel)
        weeklabel.topAnchor.constraint(equalTo: headLabe.bottomAnchor,constant : 20).isActive = true
        weeklabel.rightAnchor.constraint(equalTo: lineView.leftAnchor,constant : -20).isActive = true
        
        
        
        MainView.addSubview(weekOrderValuelabel)
        weekOrderValuelabel.centerYAnchor.constraint(equalTo: weeklabel.centerYAnchor ).isActive = true
        weekOrderValuelabel.rightAnchor.constraint(equalTo: weeklabel.leftAnchor,constant : -30).isActive = true
        
        
        MainView.addSubview(weekCostlabel)
        weekCostlabel.centerYAnchor.constraint(equalTo: weekOrderValuelabel.centerYAnchor ).isActive = true
        weekCostlabel.rightAnchor.constraint(equalTo: weekOrderValuelabel.leftAnchor,constant : -20).isActive = true
        
        MainView.addSubview(weekCostValuelabel)
        weekCostValuelabel.centerYAnchor.constraint(equalTo: weekCostlabel.centerYAnchor ).isActive = true
        weekCostValuelabel.rightAnchor.constraint(equalTo: weekCostlabel.leftAnchor,constant : -20).isActive = true
        
        
        
        MainView.addSubview(monthlabel)
        monthlabel.topAnchor.constraint(equalTo: weeklabel.bottomAnchor,constant : 10).isActive = true
        monthlabel.rightAnchor.constraint(equalTo: lineView.leftAnchor,constant : -20).isActive = true
        
        
        MainView.addSubview(monthOrderValuelabel)
        monthOrderValuelabel.centerYAnchor.constraint(equalTo: monthlabel.centerYAnchor ).isActive = true
        monthOrderValuelabel.rightAnchor.constraint(equalTo: weekOrderValuelabel.rightAnchor).isActive = true
        
        
        MainView.addSubview(monthCostlabel)
        monthCostlabel.centerYAnchor.constraint(equalTo: monthOrderValuelabel.centerYAnchor ).isActive = true
        monthCostlabel.rightAnchor.constraint(equalTo: weekCostlabel.rightAnchor).isActive = true
        
        MainView.addSubview(monthCostValuelabel)
        monthCostValuelabel.centerYAnchor.constraint(equalTo: monthCostlabel.centerYAnchor ).isActive = true
        monthCostValuelabel.rightAnchor.constraint(equalTo: weekCostValuelabel.rightAnchor).isActive = true
    
    
    
    
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
        let ci = CustomImageView(image:#imageLiteral(resourceName: "income"))
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
        NL.text = NSLocalizedString("مراجعة الطلبات الشهري والاسبوعي", comment: "this is name")
        return NL
        
    }()
    
    
    let weeklabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("العدد الاسبوعي", comment: "this is name")
        return NL
        
    }()
    
    let weekOrderValuelabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("٤٥ طلب", comment: "this is name")
        return NL
        
    }()
    
    let weekCostlabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("بقيمة", comment: "this is name")
        return NL
        
    }()
    
    
    let weekCostValuelabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("١٣٠ ريال", comment: "this is name")
        return NL
        
    }()
    
 
    let monthlabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("العدد الشهري", comment: "this is name")
        return NL
        
    }()

    let monthOrderValuelabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("٤٥ طلب", comment: "this is name")
        return NL
        
    }()
    
    let monthCostlabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("بقيمة", comment: "this is name")
        return NL
        
    }()
    
    
    let monthCostValuelabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("١٣٠ ريال", comment: "this is name")
        return NL
        
    }()
    
    
   
    

    
    
    
}
