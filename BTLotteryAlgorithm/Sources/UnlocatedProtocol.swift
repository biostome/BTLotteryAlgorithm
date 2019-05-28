//
//  UnlocatedProtocol.swift
//  BTLotteryAlgorithm
//
//  Created by nathan on 2019/5/28.
//  Copyright © 2019 nathan. All rights reserved.
//

import Foundation

protocol UnlocatedFourStarProtocol {
    
}
extension UnlocatedFourStarProtocol{
    
    // 一码不定位
    func unlocatedNumber1(_ n:Int)->Int {
        switch n {
        case 1...10:
            return binomialCoefficient(n, choose: 1)
        default:
            return 0
        }
    }
    
    // 二码不定位
    func unlocatedNumber2(_ n:Int)->Int {
        switch n {
        case 1...10:
            return binomialCoefficient(n, choose: 2)
        default:
            return 0
        }
    }
}

protocol UnlocatedFiveStarProtocol {
    
}
extension UnlocatedFiveStarProtocol {
    
    // 三码不定位
    func unlocatedNumber3(_ n:Int)->Int {
        switch n {
        case 1...10:
            return binomialCoefficient(n, choose: 3)
        default:
            return 0
        }
    }
}


typealias UnlocatedProtocol = UnlocatedFiveStarProtocol & UnlocatedFourStarProtocol

