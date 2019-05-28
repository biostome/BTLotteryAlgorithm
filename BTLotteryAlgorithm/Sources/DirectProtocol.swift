//
//  DirectElectionProtocol.swift
//  BTLotteryAlgorithm
//
//  Created by nathan on 2019/5/28.
//  Copyright © 2019 nathan. All rights reserved.
//

import Foundation

protocol DirectDuplexProtocol {}

extension DirectDuplexProtocol {
    /// 直选复式
    func directDuplex(_ n: [Int]) -> Int {
        var answers:Int = 1
        for i in n {
            let an = permutations(i, 1)
            answers *= an
        }
        return answers
    }
}

protocol DirectSumValueProtocol {

}

extension DirectSumValueProtocol{
    /// 直选和值
    func directSumValue(_ n: [Int]) -> Int {
        return 0
    }
}

typealias DirectProtocol = DirectSumValueProtocol & DirectDuplexProtocol

