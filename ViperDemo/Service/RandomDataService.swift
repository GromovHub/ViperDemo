//
//  RandomDataService.swift
//  ViperDemo
//
//  Created by Vitaly Gromov on 10/16/22.
//

import Foundation

enum RandomDataService {
    static func getData() -> (Int, [Double]) {
        let number: Int = Int.random(in: 1...100000)
        let color: [Double] = [Double.random(in: 0...1), Double.random(in: 0...1), Double.random(in: 0...1)]
        return (number, color)
    }
}
