//
//  Router.swift
//  Parshot
//
//  Created by MAC on 10/5/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit

protocol CarsRouterProtocol {
    func showCarDetail(for viewModel: SliderViewModel)
    func showCreateCarScreen()
}

class CarsRouter: CarsRouterProtocol {
    let presentingViewController: UIViewController
    var window: UIWindow?

    init(presentingViewController: UIViewController) {
        self.presentingViewController = presentingViewController
    }
    static func createModule() -> FirstMainPageController {
        
        
        let layout = UICollectionViewFlowLayout()
        let featuredAppsController = FirstMainPageController(collectionViewLayout:layout )
        let interactor: CarsInteractorProtocol = CarsInteractor()
        let router:CarsRouterProtocol = CarsRouter(presentingViewController: featuredAppsController)
        let presenter: CarsPresenterProtocol  = CarsPresenter(interactor: interactor, router: router)
        featuredAppsController.presenter = presenter
        
    return featuredAppsController
        
    }
    func showCarDetail(for viewModel: SliderViewModel) {
        guard let navigationController = presentingViewController.navigationController else {
            return
        }
        
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let carDetailViewController = storyboard.instantiateViewController(withIdentifier: "CarDetailViewController")
//        carDetailViewController.viewModel = viewModel
//
//        navigationController.pushViewController(carDetailViewController, animated: true)
    }
    
    func showCreateCarScreen() {
        guard let navigationController = presentingViewController.navigationController else {
            return
        }
        
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let carDetailViewController = storyboard.instantiateViewController(withIdentifier: "CreateCarViewController")
//
//        navigationController.pushViewController(carDetailViewController, animated: true)
    }
}
