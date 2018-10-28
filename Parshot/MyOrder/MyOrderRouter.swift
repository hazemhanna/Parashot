//
//  MyOrderRouter.swift
//  Parshot
//
//  Created by hossam ahmed on 10/27/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit

protocol MyOrderRouterProtocol {
    
    func myOrder(for viewModel: MyOrderViewModel)
    
}


class MyOrderRouter: MyOrderRouterProtocol {
    
    let presentingViewController: UIViewController
    var window: UIWindow?
    
    
    init(presentingViewController: UIViewController) {
        self.presentingViewController = presentingViewController
    }
    
    static func createModule() -> DoneMyOrderController {
        let layout = UICollectionViewFlowLayout()
        let featuredAppsController = DoneMyOrderController(collectionViewLayout:layout )
        let interactor: MyOrderInteractorProtocaol = MyOrderIntractor()
        let router:MyOrderRouterProtocol = MyOrderRouter(presentingViewController: featuredAppsController)
        let presenter: MyOrderPresenterProtocol  = MyOrderPrsenter(interactor: interactor, router: router)
        featuredAppsController.presenter = presenter
        return featuredAppsController
    }
    
    func myOrder(for viewModel: MyOrderViewModel) {
        guard let navigationController = presentingViewController.navigationController else {
            return
        }
    }
}


