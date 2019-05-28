//
//  BTLotteryAlgorithm.swift
//  BTLotteryAlgorithm
//
//  Created by nathan on 2019/5/27.
//  Copyright © 2019 nathan. All rights reserved.
//

import Foundation

class TimeLottery {
    
    lazy var fiveStar: FiveStar = {
        return FiveStar()
    }()
    
    lazy var fourStar: FourStar = {
        return FourStar()
    }()
    
    lazy var frontThree: FrontThree = {
        return FrontThree()
    }()
    
    lazy var behindThree: BehindThree = {
        return BehindThree()
    }()
    
    lazy var frontTwos: FrontTwo = {
        return FrontTwo()
    }()
    
    lazy var behindTwo: BehindTwo = {
        return BehindTwo()
    }()
    
    lazy var oneStar: OneStar = {
        return OneStar()
    }()
    
    lazy var chooseAny: ChooseAny = {
        return ChooseAny()
    }()
    
    // 五星
    struct FiveStar:UnlocatedProtocol,DirectProtocol,GroupFiveStarProtocal {}
    // 四星
    struct FourStar:UnlocatedFourStarProtocol,DirectDuplexProtocol,GroupFourStarProtocal {}
    // 前三
    struct FrontThree:DirectProtocol,GroupSumValueProtocol,GroupNumberProtocol,GroupFourStarProtocal {}
    // 后三
    struct BehindThree:DirectDuplexProtocol,GroupSumValueProtocol,GroupNumberProtocol,GroupFourStarProtocal {}
    // 前二
    struct FrontTwo:DirectDuplexProtocol,GroupDuplexProtocol,GroupSumValueProtocol {}
    // 后二
    struct BehindTwo:DirectDuplexProtocol,GroupDuplexProtocol,GroupSumValueProtocol {}
    // 一星
    struct OneStar:LocatedProtocol {}
    // 任选
    struct ChooseAny {}
    // 大小单双
    struct singleAndDouble:SingleAndDoubleProtocol{}

}


