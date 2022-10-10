//
//  MainRouter.swift
//  ViperDemo
//
//  Created by Vitaly Gromov on 10/8/22.
//

import Foundation
import UIKit

class MainRouter {
    
}

extension MainRouter: PresenterToRouterProtocol {
    static func createDependencies(thisModuleVC: MainViewController) {
//        let presenter: ViewToPresenterProtocol & InteractorToPresenterProtocol = MainPresenter()
    }
    
    func showAnotherScreen(from: UIViewController) {
        
    }
}
