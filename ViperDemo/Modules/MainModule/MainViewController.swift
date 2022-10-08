//
//  MainViewController.swift
//  ViperDemo
//
//  Created by Vitaly Gromov on 10/8/22.
//

import UIKit

class MainViewController: UIViewController {
    
     var presenter: ViewToPresenterProtocol? {
        didSet {
            print("presenter didset")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .green
        print("from view viewdidload")
        presenter?.viewDidLoad()
    }


}

extension MainViewController: PresenterToViewProtocol {
    
    func showData() {
        print("view show data")
    }
    
    
}

