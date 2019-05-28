//
//  BTLotteryAlgorithmTests.swift
//  BTLotteryAlgorithmTests
//
//  Created by nathan on 2019/5/27.
//  Copyright © 2019 nathan. All rights reserved.
//

import XCTest
@testable import BTLotteryAlgorithm

class BTLotteryAlgorithmTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let cqssc = TimeLottery()
        
        // MARK: 五星
        let five_zx = cqssc.fiveStar.directDuplex([5,1,1,1,1])
        XCTAssertEqual(five_zx, 5)
        
        let five_zx120 = cqssc.fiveStar.group120(10)
        XCTAssertEqual(five_zx120,252)
        
        //其他组选...略过
        
        let five_m1bdw = cqssc.fiveStar.unlocatedNumber1(10)
        XCTAssertEqual(five_m1bdw,10)
        
        let five_m2bdw = cqssc.fiveStar.unlocatedNumber2(10)
        XCTAssertEqual(five_m2bdw,45)
        
        let five_m3bdw = cqssc.fiveStar.unlocatedNumber3(10)
        XCTAssertEqual(five_m3bdw,120)
        
        
        // MARK: 四星
        let four_zix = cqssc.fourStar.directDuplex([2,3,2,1])
        XCTAssertEqual(four_zix,12)
        
        //四星组选...略过
        
        let four_m1bdw = cqssc.fourStar.unlocatedNumber1(10)
        XCTAssertEqual(four_m1bdw,10)
        
        let four_m2bdw = cqssc.fourStar.unlocatedNumber2(10)
        XCTAssertEqual(four_m2bdw,45)
        
        // MARK: 前三
        
        let three_zix = cqssc.frontThree.directDuplex([2,3,2])
        XCTAssertEqual(three_zix,12)
        
        // 直选和值有问题
//        let three_hez = cqssc.frontThree.directSumValue([2,3,2])
//        XCTAssertEqual(three_zix,12)
        // 组选和值有问题
        
        // 组三
        let three_zut = cqssc.frontThree.groupThree(10)
        XCTAssertEqual(three_zut,90)
        
        // 组六
        let three_zus = cqssc.frontThree.groupSix(10)
        XCTAssertEqual(three_zus,120)
        
        //不定式1码
        let three_m1bdw = cqssc.fourStar.unlocatedNumber1(10)
        XCTAssertEqual(three_m1bdw,10)
        
        //不定式2码
        let three_m2bdw = cqssc.fourStar.unlocatedNumber2(10)
        XCTAssertEqual(three_m2bdw,45)
        
        // MARK: 后三
        
        let behindThree_zix = cqssc.behindThree.directDuplex([2,3,2])
        XCTAssertEqual(behindThree_zix,12)
        
        // 直选和值有问题
        //        let three_hez = cqssc.frontThree.directSumValue([2,3,2])
        //        XCTAssertEqual(three_zix,12)
        // 组选和值有问题
        
        // 组三
        let behindThree_zut = cqssc.frontThree.groupThree(10)
        XCTAssertEqual(behindThree_zut,90)
        
        // 组六
        let behindThree_zus = cqssc.frontThree.groupSix(10)
        XCTAssertEqual(behindThree_zus,120)
        
        //不定式1码
        let behindThree_m1bdw = cqssc.fourStar.unlocatedNumber1(10)
        XCTAssertEqual(behindThree_m1bdw,10)
        
        //不定式2码
        let behindThree_m2bdw = cqssc.fourStar.unlocatedNumber2(10)
        XCTAssertEqual(behindThree_m2bdw,45)
        
        // MARK: 前二
        // 直选复式
        let frontTwo_zix = cqssc.frontTwos.directDuplex([10,10])
        XCTAssertEqual(frontTwo_zix,100)
        
        // 直选：直选和值 略 算法不会
        
        //组选：复式
        let frontTwo_zux = cqssc.frontTwos.groupDuplex(8)
        XCTAssertEqual(frontTwo_zux,28)
        
        // 组选：组选和值... 略
        
        
        // MARK: 后二
        // 直选复式
        let behindTwo_zix = cqssc.frontTwos.directDuplex([10,10])
        XCTAssertEqual(behindTwo_zix,100)
        
        // 直选：直选和值 略 算法不会
        
        //组选：复式
        let behindTwo_zux = cqssc.frontTwos.groupDuplex(8)
        XCTAssertEqual(behindTwo_zux,28)
        
        // 组选：组选和值... 略
        
        // MARK: 一星
        // 直选：定位胆
        let oneStar_DWD = cqssc.oneStar.locatedGall([10,10,10,10,10])
        XCTAssertEqual(oneStar_DWD,50)
        
        
        // MARK: 任选
        // 任选二：直选复式
        let chooseAny_zix = cqssc.chooseAny
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
