//
//  MainViewController.swift
//  ViperDemo
//
//  Created by Vitaly Gromov on 10/8/22.
//

import UIKit

class MainViewController: UIViewController, PresenterToViewProtocol {
    
    
    var presenter: ViewToPresenterProtocol?
    
    func showDataToUser() {
        
    }
    
    
     

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .green
        print("from view viewdidload")
        MainRouter.createThisModule(thisModuleVC: self)
    }


}


