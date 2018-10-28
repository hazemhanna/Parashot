//
//  MyOrderPresenter.swift
//  Parshot
//
//  Created by hossam ahmed on 10/27/18.
//  Copyright © 2018 hazem. All rights reserved.
//


import Foundation

protocol MyOrderPresenterProtocol {
    
    func getMyOrder(for completion : @escaping ([MyOrderViewModel]) -> Void )
    
    
}

class MyOrderPrsenter : MyOrderPresenterProtocol {
    
    
    
    let interactor: MyOrderInteractorProtocaol
    let router: MyOrderRouterProtocol
    
    init( interactor: MyOrderInteractorProtocaol, router: MyOrderRouterProtocol ) {
        
        self.interactor = interactor
        self.router = router
        
    }
    
    func getMyOrder(for completion: @escaping ([MyOrderViewModel]) -> Void) {
        interactor.myOrderData { (myorder) in
            completion(self.createMyOrderViewModels(from: myorder))
        }
    }
    
    private func createMyOrderViewModels(from myOrder : ObjectMyOrder) -> [MyOrderViewModel] {
        return myOrder.data.map({return MyOrderViewModel(MyOrder : $0)}) ?? []
        
    }
}


