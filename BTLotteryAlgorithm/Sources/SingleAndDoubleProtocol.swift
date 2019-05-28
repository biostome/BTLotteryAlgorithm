//
//  SingleAndDoubleProtocol.swift
//  BTLotteryAlgorithm
//
//  Created by nathan on 2019/5/28.
//  Copyright © 2019 nathan. All rights reserved.
//

import Foundation

protocol SingleAndDoubleProtocol {
    
}

extension SingleAndDoubleProtocol{
    // 大小单双
    func singleAndDouble(_ n:[Int])->Int {
        var answers:Int = 1
        for i in n {
            let an = permutations(i, 1)
            answers *= an
        }
        return answers
    }
}
