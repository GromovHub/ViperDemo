//
//  MainViewController.swift
//  ViperDemo
//
//  Created by Vitaly Gromov on 10/8/22.
//

import UIKit

class MainViewController: UIViewController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        print("view created")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var presenter: ViewToPresenterProtocol?
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "no data"
        label.textColor = .white
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // entry point
        MainRouter.createDependencies(thisModuleVC: self)
                
        setViews()
        
        presenter?.viewDidLoad()
    }
    
    private func setViews() {
        let button = UIButton()
        button.setTitle("Update", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.backgroundColor = UIColor.white.cgColor
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        view.addSubview(label)
        view.addSubview(button)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    @objc private func buttonAction() {
        print("button tapped")
        presenter?.buttonTapped()
    }
    
}

extension MainViewController: PresenterToViewProtocol {
    
    func showDataToUser(with data: MainModuleEntity) {
        label.text = String(data.number)
        label.textColor = UIColor(red: data.r, green: data.g, blue: data.b, alpha: 1)
        print("new data is shown in view")
    }
    
    
}


