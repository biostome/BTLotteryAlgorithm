//
//  GameInfoProtocol.swift
//  BTLotteryAlgorithm
//
//  Created by nathan on 2019/5/28.
//  Copyright © 2019 nathan. All rights reserved.
//

import Foundation

protocol GameInfoProtocol:CustomStringConvertible {
    var title:String{get}
    var explain:String{get}
}

extension GameInfoProtocol {
    var description: String{
        return "玩法：\(title)" + "\n" + "玩法说明：\(explain)"
    }
}
