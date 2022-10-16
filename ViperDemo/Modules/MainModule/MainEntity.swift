//
//  MainEntity.swift
//  ViperDemo
//
//  Created by Vitaly Gromov on 10/8/22.
//

import Foundation

struct MainModuleEntity {
    
    init(number: Int, r: Double, g: Double, b: Double) {
        self.number = number
        self.r = r
        self.g = g
        self.b = b
        print("entity created")
    }
    
    let number: Int
    let r: Double
    let g: Double
    let b: Double
}
