//
//  BTLotteryAlgorithm.swift
//  BTLotteryAlgorithm
//
//  Created by nathan on 2019/5/27.
//  Copyright © 2019 nathan. All rights reserved.
//

import Foundation

struct TimeLottery {
    var fiveStar:FiveStar = FiveStar()
    var fourStar:FourStar = FourStar()
    
    struct FourStar:UnlocatedProtocol,DirectElectionProtocol,FourStarGroupSelectionProtocal {}
    

    struct FiveStar:UnlocatedProtocol,DirectElectionProtocol,FiveStarGroupSelectionProtocal {}

}

extension TimeLottery.FourStar:CustomStringConvertible,CustomDebugStringConvertible {
    
    var description: String{
        return debugDescription
    }
    
    var debugDescription: String{
        return "四星"
    }
}


extension TimeLottery.FiveStar:CustomStringConvertible,CustomDebugStringConvertible {
    
    var description: String{
        return debugDescription
    }
    
    var debugDescription: String{
        return "五星"
    }
}
