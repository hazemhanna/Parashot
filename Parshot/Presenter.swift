//
//  Presenter.swift
//  Parshot
//
//  Created by MAC on 10/5/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit

protocol CarsPresenterProtocol {
    
    func showCars(completion: @escaping ([StoreViewModel]) -> Void)
    func ShowCategory(completion: @escaping ([CategoryViewModel]) -> Void)

    func showCarDetail(for viewModel: CategoryViewModel)
    func showCreateCarScreen()
}

class CarsPresenter: CarsPresenterProtocol {
    let interactor: CarsInteractorProtocol
    let router: CarsRouterProtocol
    
    init(interactor: CarsInteractorProtocol, router: CarsRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
    
    func showCars(completion: @escaping ([StoreViewModel]) -> Void) {
        interactor.getsStore { (cars) in
            completion(self.createCarsViewModels(from: cars))
        }
    }
   
    func ShowCategory(completion: @escaping ([CategoryViewModel]) -> Void) {
        interactor.getsCategory { (cat) in
     completion(self.createCategoryViewModels(from: cat))
        }
    }

    
    
    
    func showCarDetail(for viewModel: CategoryViewModel) {
        router.showCarDetail(for: viewModel)
    }
    
    
    func showCreateCarScreen() {
        router.showCreateCarScreen()
    }
    
    private func createCategoryViewModels(from cat: DataCategory) -> [CategoryViewModel] {
        return cat.data.map({return CategoryViewModel(cateogry: $0)}) ?? []
    }
    
    private func createCarsViewModels(from cars: MainData) -> [StoreViewModel] {
        return cars.data.map({return StoreViewModel(store: $0)}) ?? []
    }

}
