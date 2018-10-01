import UIKit

class MyAcountView3 : BaseCell {
    
    
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
        
        
        MainView.addSubview(TotalMonthLabel)
        TotalMonthLabel.topAnchor.constraint(equalTo: headLabe.bottomAnchor,constant : 10).isActive = true
        TotalMonthLabel.rightAnchor.constraint(equalTo: lineView.leftAnchor,constant : -20).isActive = true
        
        
        
        
        MainView.addSubview(TotalMonthValueLabel)
        TotalMonthValueLabel.centerYAnchor.constraint(equalTo: TotalMonthLabel.centerYAnchor ).isActive = true
        TotalMonthValueLabel.rightAnchor.constraint(equalTo: TotalMonthLabel.leftAnchor,constant : -50).isActive = true
        
        
        
        MainView.addSubview(appRateLabel)
        appRateLabel.topAnchor.constraint(equalTo: TotalMonthLabel.bottomAnchor,constant : 10).isActive = true
        appRateLabel.rightAnchor.constraint(equalTo: lineView.leftAnchor,constant : -20).isActive = true
        
      
        
        MainView.addSubview(appRateValueLabel)
        appRateValueLabel.centerYAnchor.constraint(equalTo: appRateLabel.centerYAnchor ).isActive = true
        appRateValueLabel.rightAnchor.constraint(equalTo: TotalMonthValueLabel.rightAnchor).isActive = true
        
        MainView.addSubview(appPercentageValueLabel)
        appPercentageValueLabel.centerYAnchor.constraint(equalTo: appRateValueLabel.centerYAnchor ).isActive = true
        appPercentageValueLabel.rightAnchor.constraint(equalTo: appRateValueLabel.leftAnchor,constant : -10).isActive = true
        
        MainView.addSubview(VerticalineView)
        VerticalineView.topAnchor.constraint(equalTo: appRateLabel.bottomAnchor,constant : 10).isActive = true
        VerticalineView.centerXAnchor.constraint(equalTo: MainView.centerXAnchor).isActive = true
        VerticalineView.widthAnchor.constraint(equalTo: MainView.widthAnchor).isActive = true
        VerticalineView.heightAnchor.constraint(equalToConstant : 1 ).isActive = true
   
    
        MainView.addSubview(totalLabel)
        totalLabel.topAnchor.constraint(equalTo: VerticalineView.bottomAnchor,constant : 10).isActive = true
        totalLabel.rightAnchor.constraint(equalTo: lineView.leftAnchor,constant : -20).isActive = true
        
        MainView.addSubview(totalValueLabel)
        totalValueLabel.centerYAnchor.constraint(equalTo: totalLabel.centerYAnchor ).isActive = true
        totalValueLabel.rightAnchor.constraint(equalTo: appRateValueLabel.rightAnchor).isActive = true
        
        
        
    
    
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
        let ci = CustomImageView(image:#imageLiteral(resourceName: "budget"))
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
        NL.text = NSLocalizedString("تفاصيل الحساب", comment: "this is name")
        return NL
        
    }()
    
    
    let  TotalMonthLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("  اجمالي طبات الشهر ", comment: "this is name")
        return NL
        
    }()
    
   
    
    let TotalMonthValueLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("١٣٠ ريال", comment: "this is name")
        return NL
        
    }()
    
    
    let appRateLabel  :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("  نسبة التطبيق", comment: "this is name")
        return NL
        
    }()
  
    
    
    let appRateValueLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("١٣٠ ريال", comment: "this is name")
        return NL
        
    }()
    
    let appPercentageValueLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("(20%)", comment: "this is name")
        return NL
        
    }()
    
    let  VerticalineView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(84, green: 0, blue: 121)
        uv.translatesAutoresizingMaskIntoConstraints = false
        return uv
    }()
    
    
    
    
    let totalLabel  :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("الاجمالي  ", comment: "this is name")
        return NL
        
    }()
    
    
    let totalValueLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("١٣٠ ريال", comment: "this is name")
        return NL
        
    }()
    
    
    
    
}
