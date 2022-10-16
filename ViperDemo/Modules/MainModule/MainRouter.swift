//
//  MainRouter.swift
//  ViperDemo
//
//  Created by Vitaly Gromov on 10/8/22.
//

import Foundation
import UIKit

class MainRouter {
    init() {
        print("router created")
    }
}

extension MainRouter: PresenterToRouterProtocol {
    static func createDependencies(thisModuleVC: MainViewController) {
        
        let presenter: ViewToPresenterProtocol & InteractorToPresenterProtocol = MainPresenter()
        
        // view to presenter
        thisModuleVC.presenter = presenter
        // presenter to view, interactor, router
        thisModuleVC.presenter?.view = thisModuleVC
        thisModuleVC.presenter?.interactor = MainInteractor()
        thisModuleVC.presenter?.router = MainRouter()
        // interactor to presenter
        thisModuleVC.presenter?.interactor?.presenter = presenter
        
        print("dependencies for main module are set")
        
        
    }
    
    func showAnotherScreen(from: UIViewController) {
        
    }
}


