//
//  MainPresenter.swift
//  ViperDemo
//
//  Created by Vitaly Gromov on 10/8/22.
//

import Foundation

final class MainPresenter {
    
    var view: PresenterToViewProtocol?
    var router: PresenterToRouterProtocol?
    var interactor: PresenterToInteractorProtocol?
    
    init() {
        print("presenter created")
    }
}

extension MainPresenter: ViewToPresenterProtocol {
    
    func viewDidLoad() {
        print("presenter recieved event from view. view did load")
    }
    
    func buttonTapped() {
        print("presenter recieved event from view. button tapped")
        interactor?.requestDataFromServer()
    }
    
    
}

extension MainPresenter: InteractorToPresenterProtocol {
    func dataRecieved(data: MainModuleEntity) {
        print("presenter recieved data from interactor", data)
        view?.showDataToUser(with: data)
    }
    
    
}

