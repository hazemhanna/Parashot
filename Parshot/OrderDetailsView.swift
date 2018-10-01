import UIKit

class OrderDetailsView  : BaseCell {
    
    
    override func setupViews() {
        
        addSubview(firstView)
        firstView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        firstView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        firstView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        firstView.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.2).isActive = true

        
        firstView.addSubview(IconImage)
        IconImage.topAnchor.constraint(equalTo: firstView.topAnchor,constant : 10).isActive = true
        IconImage.rightAnchor.constraint(equalTo: firstView.rightAnchor,constant : -10).isActive = true
        IconImage.widthAnchor.constraint(equalTo: firstView.widthAnchor,multiplier : 0.07).isActive = true
        IconImage.heightAnchor.constraint(equalTo: firstView.heightAnchor,multiplier : 0.3).isActive = true
        
        
        firstView.addSubview(lineView)
        lineView.topAnchor.constraint(equalTo: IconImage.topAnchor).isActive = true
        lineView.rightAnchor.constraint(equalTo: IconImage.leftAnchor,constant : -10).isActive = true
        lineView.widthAnchor.constraint(equalToConstant: 1).isActive = true
        lineView.heightAnchor.constraint(equalTo: IconImage.heightAnchor).isActive = true
        
        ///////////
        
        firstView.addSubview(StoreName)
        StoreName.topAnchor.constraint(equalTo: IconImage.topAnchor,constant : 5).isActive = true
        StoreName.rightAnchor.constraint(equalTo: lineView.leftAnchor,constant : -10).isActive = true
        
        
        firstView.addSubview(StoreNAmeValue)
        StoreNAmeValue.topAnchor.constraint(equalTo: StoreName.bottomAnchor,constant : 5).isActive = true
        StoreNAmeValue.rightAnchor.constraint(equalTo: lineView.leftAnchor,constant : -10).isActive = true
        
        
        firstView.addSubview(StorePlace)
        StorePlace.topAnchor.constraint(equalTo: StoreNAmeValue.bottomAnchor,constant : 10).isActive = true
        StorePlace.rightAnchor.constraint(equalTo: lineView.leftAnchor,constant : -10).isActive = true
        
        
        firstView.addSubview(StorePlaceValue)
        StorePlaceValue.topAnchor.constraint(equalTo: StorePlace.bottomAnchor,constant : 5).isActive = true
        StorePlaceValue.rightAnchor.constraint(equalTo: lineView.leftAnchor,constant : -10).isActive = true
        
        ////////////////// second view
    
    
    
        addSubview(secondView)
        secondView.topAnchor.constraint(equalTo: firstView.bottomAnchor,constant : 10 ).isActive = true
        secondView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        secondView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        secondView.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.2).isActive = true
    
    
        secondView.addSubview(SecpndIconImage)
        SecpndIconImage.topAnchor.constraint(equalTo: secondView.topAnchor,constant : 10).isActive = true
        SecpndIconImage.rightAnchor.constraint(equalTo: secondView.rightAnchor,constant : -10).isActive = true
        SecpndIconImage.widthAnchor.constraint(equalTo: secondView.widthAnchor,multiplier : 0.07).isActive = true
        SecpndIconImage.heightAnchor.constraint(equalTo: secondView.heightAnchor,multiplier : 0.3).isActive = true
        
        
        secondView.addSubview(SecondlineView)
        SecondlineView.topAnchor.constraint(equalTo: SecpndIconImage.topAnchor).isActive = true
        SecondlineView.rightAnchor.constraint(equalTo: SecpndIconImage.leftAnchor,constant : -10).isActive = true
        SecondlineView.widthAnchor.constraint(equalToConstant: 1).isActive = true
        SecondlineView.heightAnchor.constraint(equalTo: SecpndIconImage.heightAnchor).isActive = true
        
        ///////////
        
        secondView.addSubview(clientName)
        clientName.topAnchor.constraint(equalTo: SecpndIconImage.topAnchor,constant : 5).isActive = true
        clientName.rightAnchor.constraint(equalTo: SecondlineView.leftAnchor,constant : -10).isActive = true
        
        
        
        
        
        
        secondView.addSubview(clientNAmeValue)
        clientNAmeValue.topAnchor.constraint(equalTo: clientName.bottomAnchor,constant : 5).isActive = true
        clientNAmeValue.rightAnchor.constraint(equalTo: SecondlineView.leftAnchor,constant : -10).isActive = true
        
        
        secondView.addSubview(clientPlace)
        clientPlace.topAnchor.constraint(equalTo: clientNAmeValue.bottomAnchor,constant : 10).isActive = true
        clientPlace.rightAnchor.constraint(equalTo: SecondlineView.leftAnchor,constant : -10).isActive = true
        
        
        secondView.addSubview(clientPlaceValue)
        clientPlaceValue.topAnchor.constraint(equalTo: clientPlace.bottomAnchor,constant : 5).isActive = true
        clientPlaceValue.rightAnchor.constraint(equalTo: SecondlineView.leftAnchor,constant : -10).isActive = true
   
        
        ////////////third view
        addSubview(thirdView)
        thirdView.topAnchor.constraint(equalTo: secondView.bottomAnchor,constant : 10 ).isActive = true
        thirdView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        thirdView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        thirdView.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.15).isActive = true
        
        
        thirdView.addSubview(thirdIconImage)
        thirdIconImage.topAnchor.constraint(equalTo: thirdView.topAnchor,constant : 10).isActive = true
        thirdIconImage.rightAnchor.constraint(equalTo: thirdView.rightAnchor,constant : -10).isActive = true
        thirdIconImage.widthAnchor.constraint(equalTo: thirdView.widthAnchor,multiplier : 0.07).isActive = true
        thirdIconImage.heightAnchor.constraint(equalTo: thirdView.heightAnchor,multiplier : 0.3).isActive = true
        
        
        thirdView.addSubview(thirdlineView)
        thirdlineView.topAnchor.constraint(equalTo: thirdIconImage.topAnchor).isActive = true
        thirdlineView.rightAnchor.constraint(equalTo: thirdIconImage.leftAnchor,constant : -10).isActive = true
        thirdlineView.widthAnchor.constraint(equalToConstant: 1).isActive = true
        thirdlineView.heightAnchor.constraint(equalTo: thirdIconImage.heightAnchor).isActive = true
        
        ///////////
        
        thirdView.addSubview(productName)
        productName.topAnchor.constraint(equalTo: thirdIconImage.topAnchor,constant : 5).isActive = true
        productName.rightAnchor.constraint(equalTo: thirdlineView.leftAnchor,constant : -10).isActive = true
   
        
        thirdView.addSubview(productNAmeValue)
        productNAmeValue.topAnchor.constraint(equalTo: productName.bottomAnchor,constant : 5).isActive = true
        productNAmeValue.rightAnchor.constraint(equalTo: thirdlineView.leftAnchor,constant : -10).isActive = true
        
     
        /////////// fourth view
      
        addSubview(fourthView)
        fourthView.topAnchor.constraint(equalTo: thirdView.bottomAnchor,constant : 10 ).isActive = true
        fourthView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        fourthView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        fourthView.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.15).isActive = true
        
        
        fourthView.addSubview(fourthIconImage)
        fourthIconImage.topAnchor.constraint(equalTo: fourthView.topAnchor,constant : 10).isActive = true
        fourthIconImage.rightAnchor.constraint(equalTo: fourthView.rightAnchor,constant : -10).isActive = true
        fourthIconImage.widthAnchor.constraint(equalTo: fourthView.widthAnchor,multiplier : 0.07).isActive = true
        fourthIconImage.heightAnchor.constraint(equalTo: fourthView.heightAnchor,multiplier : 0.3).isActive = true
        
        
        fourthView.addSubview(fourthlineView)
        fourthlineView.topAnchor.constraint(equalTo: fourthIconImage.topAnchor).isActive = true
        fourthlineView.rightAnchor.constraint(equalTo: fourthIconImage.leftAnchor,constant : -10).isActive = true
        fourthlineView.widthAnchor.constraint(equalToConstant: 1).isActive = true
        fourthlineView.heightAnchor.constraint(equalTo: fourthIconImage.heightAnchor).isActive = true
        
        ///////////
        
        fourthView.addSubview(ItemPrice)
        ItemPrice.topAnchor.constraint(equalTo: fourthIconImage.topAnchor,constant : 5).isActive = true
        ItemPrice.rightAnchor.constraint(equalTo: fourthlineView.leftAnchor,constant : -10).isActive = true
        
        
        fourthView.addSubview(ItemPriceValue)
        ItemPriceValue.topAnchor.constraint(equalTo: ItemPrice.bottomAnchor,constant : 5).isActive = true
        ItemPriceValue.rightAnchor.constraint(equalTo: fourthlineView.leftAnchor,constant : -10).isActive = true
        
        
        
        
        
        fourthView.addSubview(paymentWay)
        paymentWay.topAnchor.constraint(equalTo: fourthIconImage.topAnchor,constant : 5).isActive = true
        paymentWay.leftAnchor.constraint(equalTo: fourthView.leftAnchor,constant : 40).isActive = true
        
        
        fourthView.addSubview(paymentWayValue)
        paymentWayValue.topAnchor.constraint(equalTo: paymentWay.bottomAnchor,constant : 5).isActive = true
        paymentWayValue.leftAnchor.constraint(equalTo: fourthView.leftAnchor,constant : 40).isActive = true
        
        
        
    
    
    
    
    }
    
    ///////  first View
    
    let  firstView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.white
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        uv.layer.cornerRadius = 10
        
        return uv
    }()
    
    
    let IconImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "shop"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    
    let  lineView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(84, green: 0, blue: 121)
        uv.translatesAutoresizingMaskIntoConstraints = false
        return uv
    }()
    
    
    
    
    
    
    let StoreName :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("اسم المتجر", comment: "this is name")
        return NL
        
    }()
    
    
    let StoreNAmeValue :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" متجر الاحلام ", comment: "this is name")
        return NL
        
    }()
    
    let StorePlace :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" مكان المتجر ", comment: "this is name")
        return NL
        
    }()
    
    let StorePlaceValue :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("احمد حلمي المتفرع من عبد المنعم رياض ", comment: "this is name")
        return NL
        
    }()
    ////////////////////////// second view 
    
    
    let  secondView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.white
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        uv.layer.cornerRadius = 10
        
        return uv
    }()
    
    
    let SecpndIconImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "0"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    
    let  SecondlineView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(84, green: 0, blue: 121)
        uv.translatesAutoresizingMaskIntoConstraints = false
        return uv
    }()
    
    
    
    
    
    
    let clientName :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("اسم العميل ", comment: "this is name")
        return NL
        
    }()
    
    
    let clientNAmeValue :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" حازم حنا  ", comment: "this is name")
        return NL
        
    }()
    
    let clientPlace :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" مكان العميل  ", comment: "this is name")
        return NL
        
    }()
    
    let clientPlaceValue :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("احمد حلمي المتفرع من عبد المنعم رياض ", comment: "this is name")
        return NL
        
    }()
    
///////////////////////// third view 
    
    
    
    
    
    
    let  thirdView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.white
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        uv.layer.cornerRadius = 10
        
        return uv
    }()
    
    
    let thirdIconImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "تقطيع 2"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    
    let  thirdlineView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(84, green: 0, blue: 121)
        uv.translatesAutoresizingMaskIntoConstraints = false
        return uv
    }()
    
    
    
    
    
    
    let productName :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("اسم المنتج ", comment: "this is name")
        return NL
        
    }()
    
    
    let productNAmeValue :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("  سامسونج جاجسي اس 7حي تابع التفاصيل يا روح امك  ", comment: "this is name")
        return NL
        
    }()
    
    ////////////////////fourth view
    
    let fourthView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.white
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        uv.layer.cornerRadius = 10
        
        return uv
    }()
    
    
    let fourthIconImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "coins"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    
    let  fourthlineView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(84, green: 0, blue: 121)
        uv.translatesAutoresizingMaskIntoConstraints = false
        return uv
    }()
    
    
    
    
    
    
    let  ItemPrice :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("سعر المنتج ", comment: "this is name")
        return NL
        
    }()
    
    
    let ItemPriceValue :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("١٢٥٠ ريال ", comment: "this is name")
        return NL
        
    }()
    
    
    
    
    let  paymentWay :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" طريقة الدفع", comment: "this is name")
        return NL
        
    }()
    
    
    let paymentWayValue :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" بطاقة ", comment: "this is name")
        return NL
        
    }()
    
    
    
    
    
    
}
