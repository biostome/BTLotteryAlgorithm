import UIKit
import Foundation


// 阶乘
func factorial(_ n: Int) -> Int {
    var n = n
    var result = 1
    while n > 1 {
        result *= n
        n -= 1
    }
    return result
}
factorial(3)   // returns 120

// 不重复排列
func permutations(_ n: Int, _ k: Int) -> Int {
    var n = n
    var answer = n
    for _ in 1..<k {
        n -= 1
        answer *= n
    }
    return answer
}
let an0 = permutations(4, 2)   // returns 60


/// 组合数计算
// 算法1
func quickBinomialCoefficient(_ n: Int, choose k: Int) -> Int {
    var result = 1
    for i in 0..<k {
        result *= (n - i)
        result /= (i + 1)
    }
    return result
}
quickBinomialCoefficient(7, choose: 5)     // prints 28

// 算法2
func combinations(_ n: Int, choose k: Int) -> Int {
    return permutations(n, k) / factorial(k)
}
combinations(7, choose: 5)    // prints 98280


// 算法3 速度最快
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
binomialCoefficient(7, choose: 5)   // prints a very large number

// 算法4
func combinationes(_ n: Int, choose k: Int) -> Int {
    return factorial(k + n - 1) / (factorial(k) * factorial(n - 1))
//    return permutations(n, k) / factorial(k)
}
combinationes(10, choose: 5)    // prints 98280



/********************重庆时时彩**********************/
//五星直选复式
let an = permutations(5, 1)
let an1 = permutations(2, 1)
let an2 = permutations(1, 1)
let an3 = permutations(1, 1)
let an4 = permutations(1, 1)
let ans = an * an1 * an2 * an3 * an4

//四星直选复式
let f0 = permutations(5, 1)
let f1 = permutations(2, 1)
let f2 = permutations(1, 1)
let f3 = permutations(1, 1)
let f = f0 * f1 * f2 * f3

//前三直选：复式
let q0 = permutations(5, 1)
let q1 = permutations(2, 1)
let q2 = permutations(1, 1)
let q = q0 * q1 * q2

// 直选单式
let zx0 = permutations(5, 1)
let zx1 = permutations(2, 1)
let zx2 = permutations(1, 1)
let zx3 = permutations(1, 1)
let zx = zx0 * zx1 * zx2 * zx3


//五星组选120
//五星组选60
//五星组选30
//五星组选20
//五星组选10
// 组选不会

//组选：四星组选24
//组选：四星组选12
//组选：四星组选6
//组选：四星组选4
// 组选不会

// 不定位：一码不定位
binomialCoefficient(6, choose: 1)

// 不定位：二码不定位
binomialCoefficient(6, choose: 2)

// 不定位：三码不定位
binomialCoefficient(6, choose: 3)

// 前三直选和值
// 不会

// 组选：组三
let z3 = permutations(10, 2)
// 组选：组六
let z6 = binomialCoefficient(8, choose: 3)

// 组选：复式
let zxfs = binomialCoefficient(7, choose: 2)

//直选：定位胆
let dwd0 = permutations(5, 1)
let dwd1 = permutations(2, 1)
let dwd2 = permutations(1, 1)
let dwd3 = permutations(1, 1)
let dwd4 = permutations(1, 1)
let dwds = dwd0 * dwd1 * dwd2 * dwd3 * dwd4

// 任选
// 任选二：直选复式



/********************11选5**********************/

//前三一码不定位：复式
binomialCoefficient(6, choose: 1)
//任选一中一：复式
binomialCoefficient(6, choose: 1)




/******************testing**************************/

//let 时时彩五星直选复式 = ssc.wx.zix.fs(choosed:6)
//let 时时彩五星一码不定位 = ssc.wx.bdw.m1(choosed:6)

protocol 不定位协议 {}
extension 不定位协议 {
    
    // 一码
    func 一码(choose n:Int)->Int {
        switch n {
        case 0..<10:
            return binomialCoefficient(n, choose: 1)
        default:
            return 0
        }
    }
    
    //二码不定位
    func 二码(choose n:Int)->Int {
        switch n {
        case 0..<10:
            return binomialCoefficient(n, choose: 2)
        default:
            return 0
        }
    }
    
    //三码不定位
    func 三码(choose n:Int)->Int {
        switch n {
        case 0..<10:
            return binomialCoefficient(n, choose: 3)
        default:
            return 0
        }
    }
}

protocol 直选协议 {}
extension 直选协议 {
    // 复式
    func 复式(choose n:[Int])->Int {
        var answers:Int = 1
        for i in n {
            let an = permutations(i, 1)
            answers *= an
        }
        return answers
    }
}

protocol 其他协议{}
extension 其他协议{}

struct 五星组:直选协议 ,不定位协议, 其他协议 {
    
}

struct 前三组:直选协议 ,不定位协议 {
    
}

struct 时时彩{
    var 五星:五星组 = 五星组()
}

时时彩().五星.复式(choose: [3,1,2,1,1])




