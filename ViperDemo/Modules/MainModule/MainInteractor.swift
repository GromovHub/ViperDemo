//
//  MainInteractor.swift
//  ViperDemo
//
//  Created by Vitaly Gromov on 10/8/22.
//

import Foundation

class MainInteractor {
    init() {
        print("interactor created")
    }
    
    var presenter: InteractorToPresenterProtocol?
}

extension MainInteractor: PresenterToInteractorProtocol {
    
    func requestDataFromServer() {
        print("data requested by interactor from server")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2 ) { [weak self] in
            let data = RandomDataService.getData()
            let rgb = data.1
            let entity = MainModuleEntity(number: data.0, r: rgb[0] , g: rgb[1], b: rgb[2])
            self?.presenter?.dataRecieved(data: entity)
        }
    }
    
    
}
