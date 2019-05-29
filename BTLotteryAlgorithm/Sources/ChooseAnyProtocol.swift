//
//  ChooseAnyProtocol.swift
//  BTLotteryAlgorithm
//
//  Created by nathan on 2019/5/29.
//  Copyright © 2019 nathan. All rights reserved.
//

import Foundation

protocol ChooseAnyProtocol {
}
extension ChooseAnyProtocol {
    
    // 任选二：直选复式
    func chooseAnyTwoDirectDuplex(_ n: [Int]) -> Int {
        var answers:Int = 1
        for i in n {
            let an = binomialCoefficient(4, choose: 1)
            answers *= an
        }
        return answers
    }
    
    // 任选三：直选复式
    func chooseAnyThreeDirectDuplex(_ n: [Int]) -> Int {
        var answers:Int = 1
        for i in n {
            let an = permutations(i, 3)
            answers *= an
        }
        return answers
    }
    
    // 任选四：直选复式
    func chooseAnyFourDirectDuplex(_ n: [Int]) -> Int {
        var answers:Int = 1
        for i in n {
            let an = permutations(i, 4)
            answers *= an
        }
        return answers
    }
}
