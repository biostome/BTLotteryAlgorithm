//
//  FiveStarGroupSelection.swift
//  BTLotteryAlgorithm
//
//  Created by nathan on 2019/5/28.
//  Copyright © 2019 nathan. All rights reserved.
//

import Foundation

protocol FiveStarGroupSelectionProtocal {
    
}

extension FiveStarGroupSelectionProtocal{
    
    // 一码
    func groupSelection120(_ n:Int)->Int {
        return binomialCoefficient(n, choose: 5)
    }
    
    func groupSelection60(choose n:Int)->Int {
        return 0
    }
    
    func groupSelection30(choose n:Int)->Int {
        return 0
    }
    
    func groupSelection20(choose n:Int)->Int {
        return 0
    }
    
    func groupSelection10(choose n:Int)->Int {
        return 0
    }
    
    func groupSelection5(choose n:Int)->Int {
        return 0
    }
}
