//
//  GroupProtocol.swift
//  BTLotteryAlgorithm
//
//  Created by nathan on 2019/5/28.
//  Copyright © 2019 nathan. All rights reserved.
//

import Foundation

protocol GroupProtocol {
    
}

extension GroupProtocol {
    
    // 五星组选120
    func group120(_ n:Int)->Int {
        switch n {
        case 0...10:
            return binomialCoefficient(n, choose: 5)
        default:
            return 0
        }
    }
    // 五星组选60
    func group60(choose n:Int)->Int {
        return 0
    }
    // 五星组选30
    func group30(choose n:Int)->Int {
        return 0
    }
    // 五星组选20
    func group20(choose n:Int)->Int {
        return 0
    }
    // 五星组选10
    func group10(choose n:Int)->Int {
        return 0
    }
    // 五星组选5
    func group5(choose n:Int)->Int {
        return 0
    }
    // 四星组选24
    func group24(_ n:Int)->Int {
        return 0
    }
    // 四星组选12
    func group12(choose n:Int)->Int {
        return 0
    }
    // 四星组选6
    func group6(choose n:Int)->Int {
        return 0
    }
    /// 四星组选4
    func group4(choose n:Int)->Int {
        return 0
    }
    
    /// 前三/后三组选和值
    func frontThreeGroupSumValue(_ n:[Int])->Int {
        var sumValues = [1,2,2,4,5,6,8,10,11,13,14,14,15]
        let reversed = sumValues.reversed()
        sumValues = sumValues + reversed
        var answers:Int = 0
        if n.count > sumValues.count { return answers}
        for i in n {
            answers += sumValues[i-1]
        }
        return answers
    }
    
    /// 前二/后二组选和值
    func frontTwoGroupSumValue(_ n:[Int])->Int {
        var sumValues = [1,1,2,2,3,3,4,4]
        let reversed = sumValues.reversed()
        sumValues = sumValues + [5] + reversed
        var answers:Int = 0
        if n.count > sumValues.count { return answers}
        for i in n {
            answers += sumValues[i-1]
        }
        return answers
    }
    
    // 组三
    func groupThree(_ n:Int)->Int {
        switch n {
        case 1...10:
            return permutations(n, 2)
        default:
            return 0
        }
    }
    
    // 组六
    func groupSix(_ n:Int)->Int {
        switch n {
        case 1...10:
            return binomialCoefficient(n, choose: 3)
        default:
            return 0
        }
    }
    
    // 组选复式
    func groupDuplex(_ n:Int)->Int {
        switch n {
        case 1...10:
            return binomialCoefficient(n, choose: 2)
        default:
            return 0
        }
    }
}
