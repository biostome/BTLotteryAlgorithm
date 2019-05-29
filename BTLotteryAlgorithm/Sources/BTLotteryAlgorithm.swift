//
//  BTLotteryAlgorithm.swift
//  BTLotteryAlgorithm
//
//  Created by nathan on 2019/5/27.
//  Copyright © 2019 nathan. All rights reserved.
//

import Foundation

class TimeLottery {
    // 五星
    struct FiveStar:UnlocatedProtocol,DirectProtocol,GroupProtocol {}
    // 四星
    struct FourStar:UnlocatedProtocol,DirectProtocol {}
    // 前三
    struct FrontThree:UnlocatedProtocol,DirectProtocol,GroupProtocol {}
    // 后三
    struct BehindThree:UnlocatedProtocol,DirectProtocol,GroupProtocol {}
    // 前二
    struct FrontTwo:DirectProtocol,GroupProtocol {}
    // 后二
    struct BehindTwo:DirectProtocol,GroupProtocol {}
    // 一星
    struct OneStar:LocatedProtocol {}
    // 任选
    struct ChooseAny:ChooseAnyProtocol {}
    // 大小单双
    struct singleAndDouble:SingleAndDoubleProtocol{}

}
