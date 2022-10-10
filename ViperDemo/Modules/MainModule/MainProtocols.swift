//
//  MainProtocols.swift
//  ViperDemo
//
//  Created by Vitaly Gromov on 10/8/22.
//

import Foundation
import UIKit

protocol PresenterToViewProtocol: AnyObject {
    var presenter: ViewToPresenterProtocol? { get set }
    func showDataToUser()
}
protocol PresenterToRouterProtocol: AnyObject {
    static func createDependencies(thisModuleVC: MainViewController)
    func showAnotherScreen(from: UIViewController)
}
protocol PresenterToInteractorProtocol: AnyObject {
    var presenter: InteractorToPresenterProtocol? { get set }
    func requestDataFromServer()
}

protocol ViewToPresenterProtocol: AnyObject {
    var view: PresenterToViewProtocol? { get set }
    var router: PresenterToRouterProtocol? { get set }
    var interactor: PresenterToInteractorProtocol? { get set }
    
    func viewDidLoad()
    func buttonTapped()
}
protocol InteractorToPresenterProtocol: AnyObject {
    func dataRecieved(data: Data)
}

