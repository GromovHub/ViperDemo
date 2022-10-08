//
//  MainProtocols.swift
//  ViperDemo
//
//  Created by Vitaly Gromov on 10/8/22.
//

import Foundation

protocol ViewToPresenterProtocol: AnyObject {
    var view: PresenterToViewProtocol? { get set }
    func viewDidLoad()
}

protocol PresenterToViewProtocol: AnyObject {
    var presenter: ViewToPresenterProtocol? { get set }
    func showData()
}


