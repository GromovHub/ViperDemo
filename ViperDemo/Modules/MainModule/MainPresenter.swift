//
//  MainPresenter.swift
//  ViperDemo
//
//  Created by Vitaly Gromov on 10/8/22.
//

import Foundation

final class MainPresenter {
    var view: PresenterToViewProtocol?
    init() {
        print("presenter created")
    }
}

extension MainPresenter: ViewToPresenterProtocol {
    
    func viewDidLoad() {
        print("presenter view did load")
    }
}
