//
//  DirectElectionProtocol.swift
//  BTLotteryAlgorithm
//
//  Created by nathan on 2019/5/28.
//  Copyright © 2019 nathan. All rights reserved.
//

import Foundation

protocol DirectElectionProtocol {
    
}

extension DirectElectionProtocol{
    
    // 直选复式
    func directElectionDuplex(_ n:[Int])->Int {
        var answers:Int = 1
        for i in n {
            let an = permutations(i, 1)
            answers *= an
        }
        return answers
    }
}

