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
        
        // MARK: 五星
        let fiveStar = TimeLottery.FiveStar()
        let five_zx = fiveStar.directDuplex([5,1,1,1,1])
        XCTAssertEqual(five_zx, 5)
        
        let five_zx120 = fiveStar.group120(10)
        XCTAssertEqual(five_zx120,252)
        
//        let five_zx60 = fiveStar.group60([5,3])
//        XCTAssertEqual(five_zx60,1)
        
        //其他组选...略过
        
        let five_m1bdw = fiveStar.unlocatedNumber1(10)
        XCTAssertEqual(five_m1bdw,10)
        
        let five_m2bdw = fiveStar.unlocatedNumber2(10)
        XCTAssertEqual(five_m2bdw,45)
        
        let five_m3bdw = fiveStar.unlocatedNumber3(10)
        XCTAssertEqual(five_m3bdw,120)
        
        
        // MARK: 四星
        let fourStar = TimeLottery.FourStar()
        let four_zix = fourStar.directDuplex([2,3,2,1])
        XCTAssertEqual(four_zix,12)
        
        //四星组选...略过
        
        let four_m1bdw = fourStar.unlocatedNumber1(10)
        XCTAssertEqual(four_m1bdw,10)
        
        let four_m2bdw = fourStar.unlocatedNumber2(10)
        XCTAssertEqual(four_m2bdw,45)
        
        // MARK: 前三
        
        let frontThree = TimeLottery.FrontThree()
        let three_zix = frontThree.directDuplex([2,3,2])
        XCTAssertEqual(three_zix,12)
        
        // 直选和值
        let three_hez = frontThree.frontThreeDirectSumValue([2,3,4])
        XCTAssertEqual(three_hez,31)
        
        var grSum:[Int] = []
        for i in 1...26 {grSum.append(i)}
        let three_zxhz = frontThree.frontThreeGroupSumValue(grSum)
        XCTAssertEqual(three_zxhz,210)
        
        // 组三
        let three_zut = frontThree.groupThree(10)
        XCTAssertEqual(three_zut,90)
        
        // 组六
        let three_zus = frontThree.groupSix(10)
        XCTAssertEqual(three_zus,120)
        
        //不定式1码
        let three_m1bdw = fourStar.unlocatedNumber1(10)
        XCTAssertEqual(three_m1bdw,10)
        
        //不定式2码
        let three_m2bdw = fourStar.unlocatedNumber2(10)
        XCTAssertEqual(three_m2bdw,45)
        
        // MARK: 后三
        
        let behindThree = TimeLottery.BehindThree()
        let behindThree_zix = behindThree.directDuplex([2,3,2])
        XCTAssertEqual(behindThree_zix,12)
        
        // 直选和值
        let behindThree_hez = behindThree.frontThreeDirectSumValue([25,26])
        XCTAssertEqual(behindThree_hez,9)
        
        // 组选和值
        var behindThree_grSum:[Int] = []
        for i in 1...26 {behindThree_grSum.append(i)}
        let behindThree_zxhz = behindThree.frontThreeGroupSumValue(grSum)
        XCTAssertEqual(behindThree_zxhz,210)
        
        // 组三
        let behindThree_zut = behindThree.groupThree(10)
        XCTAssertEqual(behindThree_zut,90)
        
        // 组六
        let behindThree_zus = behindThree.groupSix(10)
        XCTAssertEqual(behindThree_zus,120)
        
        //不定式1码
        let behindThree_m1bdw = behindThree.unlocatedNumber1(10)
        XCTAssertEqual(behindThree_m1bdw,10)
        
        //不定式2码
        let behindThree_m2bdw = behindThree.unlocatedNumber2(10)
        XCTAssertEqual(behindThree_m2bdw,45)
        
        // MARK: 前二
        let frontTwos = TimeLottery.FrontTwo()
        // 直选复式
        let frontTwo_zix = frontTwos.directDuplex([10,10])
        XCTAssertEqual(frontTwo_zix,100)
        
        // 直选：直选和值
        let frontTow_hezhi = frontTwos.frontTwoDirectSumValue([0,1,2])
        XCTAssertEqual(frontTow_hezhi,6)
        
        //组选：复式
        let frontTwo_zux = frontTwos.groupDuplex(8)
        XCTAssertEqual(frontTwo_zux,28)
        
        
        var frontTwo_grSum:[Int] = []
        for i in 1...8 {frontTwo_grSum.append(i)}
        let frontTwo_zxhz = frontThree.frontTwoGroupSumValue(frontTwo_grSum)
        XCTAssertEqual(frontTwo_zxhz,20)
        
        
        // MARK: 后二
        let behindTwo = TimeLottery.BehindTwo()
        // 直选复式
        let behindTwo_zix = behindTwo.directDuplex([10,10])
        XCTAssertEqual(behindTwo_zix,100)
        
        // 直选：直选和值
        let behindTow_hezhi = behindTwo.frontTwoDirectSumValue([16,17,18])
        XCTAssertEqual(behindTow_hezhi,6)
        
        //组选：复式
        let behindTwo_zux = behindTwo.groupDuplex(8)
        XCTAssertEqual(behindTwo_zux,28)
        
        // 后二组选和值
        var behindTwo_grSum:[Int] = []
        for i in 1...8 {behindTwo_grSum.append(i)}
        let behindTwo_zxhz = frontThree.frontTwoGroupSumValue(behindTwo_grSum)
        XCTAssertEqual(behindTwo_zxhz,20)
        
        // MARK: 一星
        let oneStar = TimeLottery.OneStar()
        // 直选：定位胆
        let oneStar_DWD = oneStar.locatedGall([10,10,10,10,10])
        XCTAssertEqual(oneStar_DWD,50)
        
        
        // MARK: 任选
        // 任选二：直选复式
//        let chooseAny = TimeLottery.ChooseAny()
//        let chooseAny_Tow = chooseAny.chooseAnyTwoDirectDuplex([1,1,1,1,1])
//        XCTAssertEqual(chooseAny_Tow,14)
        // MARK: 大小单双
        // 直选：前二大小单双
        // 直选：后二大小单双
        let dxds = TimeLottery.singleAndDouble()
        let dxds_reult = dxds.singleAndDouble([1,1])
        XCTAssertEqual(dxds_reult,1)
        
        let dxds_reult1 = dxds.singleAndDouble([0,0])
        XCTAssertNotEqual(dxds_reult1, 1)
        
        let dxds_reult2 = dxds.singleAndDouble([2,2])
        XCTAssertNotEqual(dxds_reult2, 1)
        
        let dxds_reult3 = dxds.singleAndDouble([1,2])
        XCTAssertNotEqual(dxds_reult3, 1)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
