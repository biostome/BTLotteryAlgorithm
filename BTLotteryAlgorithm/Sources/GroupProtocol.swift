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

// MARK: 五星组选
protocol GroupFiveStarProtocal {}

extension GroupFiveStarProtocal{
    
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
}

// MARK: 四星组选
protocol GroupFourStarProtocal {}

extension GroupFourStarProtocal{
    
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
    // 四星组选4
    func group4(choose n:Int)->Int {
        return 0
    }
}

// MARK: 组选和值
protocol GroupSumValueProtocol {}
extension GroupSumValueProtocol{
    // 组选和值
    func groupSumValue(_ n:[Int])->Int {
        return 0
    }
}

// MARK: 组三/组六
protocol GroupNumberProtocol {}
extension GroupNumberProtocol{
    
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
}

// MARK: 组选复式
protocol GroupDuplexProtocol {}
extension GroupDuplexProtocol{
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
