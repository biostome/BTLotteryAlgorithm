//
//  CoreAlgorithm.swift
//  BTLotteryAlgorithm
//
//  Created by nathan on 2019/5/27.
//  Copyright © 2019 nathan. All rights reserved.
//  排列组合：https://www.shuxuele.com/combinatorics/combinations-permutations.html
//  记住：要 "排" 列就需要次序，不然堆成一 "组" 就可以了……

import Foundation


/// 阶乘
///
/// - Parameter n: 自然数
/// - Returns: 自然数
func factorial(_ n: Int) -> Int {
    var n = n
    var result = 1
    while n > 1 {
        result *= n
        n -= 1
    }
    return result
}

// MARK: 排列

/// 不重复排列
/// - Parameters:
///   - n: 总数
///   - k: 要排列的数
/// - Returns: 有多少中排列的可能
func permutations(_ n: Int, _ k: Int) -> Int {
    var n = n
    var answer = n
    for _ in 1..<k {
        n -= 1
        answer *= n
    }
    return answer
}


// MARK: 组合
/*
// 算法1
func quickBinomialCoefficient(_ n: Int, choose k: Int) -> Int {
    var result = 1
    for i in 0..<k {
        result *= (n - i)
        result /= (i + 1)
    }
    return result
}

// 算法2
func combinations(_ n: Int, choose k: Int) -> Int {
    return permutations(n, k) / factorial(k)
}
*/

// 算法3 速度最快

/// 计算组合 在n中取一个数与n的所有数进行组合，看有多少总组合方式
/// 不可重复：例如彩票号码 (2,14,15,27,30,33)
/// - Parameters:
///   - n: 总数
///   - k: k < n
/// - Returns: 可能的组合数
func binomialCoefficient(_ n: Int, choose k: Int) -> Int {
    var bc = Array(repeating: Array(repeating: 0, count: n + 1), count: n + 1)
    
    for i in 0...n {
        bc[i][0] = 1
        bc[i][i] = 1
    }
    
    if n > 0 {
        for i in 1...n {
            for j in 1..<i {
                bc[i][j] = bc[i - 1][j - 1] + bc[i - 1][j]
            }
        }
    }
    
    return bc[n][k]
}

