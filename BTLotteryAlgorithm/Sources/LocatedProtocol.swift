//
//  LocatedProtocol.swift
//  BTLotteryAlgorithm
//
//  Created by nathan on 2019/5/28.
//  Copyright © 2019 nathan. All rights reserved.
//

import Foundation

protocol LocatedProtocol {
    
}
extension LocatedProtocol {
    func locatedGall(_ n: [Int]) -> Int {
        var answers:Int = 0
        for i in n {
            let an = permutations(i, 1)
            answers += an
        }
        return answers
    }
}
