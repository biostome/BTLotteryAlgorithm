//
//  DirectElectionProtocol.swift
//  BTLotteryAlgorithm
//
//  Created by nathan on 2019/5/28.
//  Copyright © 2019 nathan. All rights reserved.
//

import Foundation

protocol DirectProtocol {}

extension DirectProtocol {
    /// 直选复式
    func directDuplex(_ n: [Int]) -> Int {
        var answers:Int = 1
        for i in n {
            let an = permutations(i, 1)
            answers *= an
        }
        return answers
    }
    
    /// 前三\后三直选和值
    func frontThreeDirectSumValue(_ n: [Int]) -> Int {
        var sumValues = [1,3,6,10,15,21,28,36,45,55,63,69,73,75]
        sumValues += sumValues.reversed()
        var answers:Int = 0
        for i in n {
            answers += sumValues[i]
        }
        return answers
    }
    
    /// 前二/后二直选和值
    func frontTwoDirectSumValue(_ n: [Int]) -> Int {
        var sumValues = [1,2,3,4,5,6,7,8,9]
        let reversed = sumValues.reversed()
        sumValues = sumValues + [10] + reversed
        var answers:Int = 0
        for i in n {
            answers += sumValues[i]
        }
        return answers
    }
}
