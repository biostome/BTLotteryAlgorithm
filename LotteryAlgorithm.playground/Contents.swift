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
let fa = factorial(3)   // returns 6

// 排列
func permutations(_ n: Int, _ k: Int) -> Int {
    var n = n
    var answer = n
    for _ in 1..<k {
        n -= 1
        answer *= n
    }
    return answer
}
let per = permutations(4, 2)   // returns 12

// 组合数算法1
func combinations(_ n: Int, choose k: Int) -> Int {
    return permutations(n, k) / factorial(k)
}
combinations(7, choose: 5) //print 21

// 组合数算法2 快速二项式系数
func quickBinomialCoefficient(_ n: Int, choose k: Int) -> Int {
    var result = 1
    for i in 0..<k {
        result *= (n - i)
        result /= (i + 1)
    }
    return result
}
quickBinomialCoefficient(7, choose: 5)  //print 21

// 组合数算法3 二项式系数
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
binomialCoefficient(7, choose: 5) //print 21

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
binomialCoefficient(8, choose: 5)
//五星组选60
//五星组选30
//五星组选20
//五星组选10


//组选：四星组选24
//组选：四星组选12
//组选：四星组选6
//组选：四星组选4


// 不定位：一码不定位
binomialCoefficient(6, choose: 1)

// 不定位：二码不定位
binomialCoefficient(6, choose: 2)

// 不定位：三码不定位
binomialCoefficient(6, choose: 3)

// 前三直选和值



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


/********************5分时时彩**********************/
//定位胆
//注数 = 一个号码球为一注
// max number is 50 bet
let 万位 = permutations(n, 1) //n<10
let 千位 = permutations(n, 1) //n<10
let 百位 = permutations(n, 1) //n<10
let 十位 = permutations(n, 1) //n<10
let 个位 = permutations(n, 1) //n<10
let 总注数 = 万位 + 千位 + 百位 + 十位 + 个位

//前二
//前二直选
let 万位 = permutations(n, 1) //n<10
let 千位 = permutations(n, 1) //n<10
let 总注数 = 万位 * 千位

// 直选和值 特殊处理

// 前二组选 
let result = binomialCoefficient(n, choose: 2) // prints 10 ,the n max less number 10

// 前二直选单式
// 将号码球按两两作为一注分割，然后遍历计算注数 例如：12 34，按空格分开。
// n = [12,34]
func 前二直选单式(_ n:[Int]) -> Int {
        var answers:Int = 0
        for i in n {
            // i1 = 12  
            // i2 = 34
            if i.count != 2 return
            let a = i.first.count // a1 printf 1 ; a2 printf 1 
            let b = i.last.count // b1 printf 1 ; b2 printf 1
            let an = a * b // an1 printf 1 ; an2 printf 1 
            answers += an // ansers1 printf 1 ; ansers2 printf 2
        }
        return answers // final printf 2
}

// 后二组选（和前二组选一样）
let result = binomialCoefficient(n, choose: 2) // prints 10 ,the n max less number 10

// 后二直选（和前二直选一样）
let 万位 = permutations(n, 1) //n<10
let 千位 = permutations(n, 1) //n<10
let 总注数 = 万位 * 千位

// 直选和值 特殊处理

// 后二直选单式(和前二直选单式一样)
func 后二直选单式(_ n:[Int]) -> Int {
        var answers:Int = 0
        for i in n {
            // i1 = 12  
            // i2 = 34
            if i.count != 2 return
            let a = i.first.count // a1 printf 1 ; a2 printf 1 
            let b = i.last.count // b1 printf 1 ; b2 printf 1
            let an = a * b // an1 printf 1 ; an2 printf 1 
            answers += an // ansers1 printf 1 ; ansers2 printf 2
        }
        return answers // final printf 2
}

//前三组三 
let 组三 = permutations(n, 2) //n<10

// 前三组六
let 前三组六 = binomialCoefficient(n, choose: 3) // prints 10 ,n<10

// 前三直选
let 万位 = permutations(n, 1) //1<n<10
let 千位 = permutations(n, 1) //1<n<10
let 百位 = permutations(n, 1) //1<n<10
let 总注数 = 万位 * 千位 * 百位

// 前三直选单式
func 前三直选单式(_ n:[Int]) -> Int {
        var answers:Int = 0
        for i in n {
            // i1 = 12  
            // i2 = 34
            if i.count != 3 return
            let a = i.first.count // a1 printf 1 ; a2 printf 1 
            let b = i[1].count // b1 printf 1 ; b2 printf 1
            let c = i.last.count
            let an = a * b * c // an1 printf 1 ; an2 printf 1 
            answers += an // ansers1 printf 1 ; ansers2 printf 2
        }
        return answers // final printf 2
}

// 中三直选
let 千位 = permutations(n, 1) //1<n<10
let 百位 = permutations(n, 1) //1<n<10
let 十位 = permutations(n, 1) //1<n<10
let 总注数 = 千位 * 百位 * 十位

// 中三组三（和前三组三一样）
let  中三组三注数 = permutations(n, 2) //n<10

// 中三直选单式
func 中三直选单式(_ n:[Int]) -> Int {
        var answers:Int = 0
        for i in n {
            // i1 = 12  
            // i2 = 34
            if i.count != 3 return
            let a = i.first.count // a1 printf 1 ; a2 printf 1 
            let b = i[1].count // b1 printf 1 ; b2 printf 1
            let c = i.last.count
            let an = a * b * c // an1 printf 1 ; an2 printf 1 
            answers += an // ansers1 printf 1 ; ansers2 printf 2
        }
        return answers // final printf 2
}

// 后三直选
let 百位 = permutations(n, 1) //1<n<10
let 十位 = permutations(n, 1) //1<n<10
let 个位 = permutations(n, 1) //1<n<10
let 总注数 =  百位 * 十位 * 个位

// 后三组三（和中三组三一样）
let  中三组三注数 = permutations(n, 2) //n<10

// 后三组六（和前三组六一样）
let 后三组六 = binomialCoefficient(n, choose: 3) // prints 10 ,n<10

// 后三直选单式(和中三直选单式一样)
func 后三直选单式(_ n:[Int]) -> Int {
        var answers:Int = 0
        for i in n {
            // i1 = 12  
            // i2 = 34
            if i.count != 3 return
            let a = i.first.count // a1 printf 1 ; a2 printf 1 
            let b = i[1].count // b1 printf 1 ; b2 printf 1
            let c = i.last.count
            let an = a * b * c // an1 printf 1 ; an2 printf 1 
            answers += an // ansers1 printf 1 ; ansers2 printf 2
        }
        return answers // final printf 2
}

// 四星
// 后四组选2
let 后四组选24 = binomialCoefficient(n, choose: 4) // prints 10 ,4<=n<10
let 后四组选12 =  
let 后四组选6 = binomialCoefficient(n, choose: 2) // prints 10 ,2<=n<10
let 后四组选4 = 

// 五星
let 五星组选120 = binomialCoefficient(n, choose: 5) // prints 10 ,5<=n<10
let 五星组选60 = 
let 五星组选30 = 
let 五星组选20 = 
let 五星组选10 = 
let 五星组选5 = 

//五星直选
let 万位 = permutations(5, 1)
let 千位 = permutations(2, 1)
let 百位 = permutations(1, 1)
let 十位 = permutations(1, 1)
let 个位 = permutations(1, 1)
let 注数 = 万位 * 千位 * 百位 * 十位 * 个位

// 五星直选单式
func 五星直选单式(_ n:[Int]) -> Int {
        var answers:Int = 0
        for i in n {
            if i.count != 5 return
            let a = i[0].count 
            let b = i[1].count
            let c = i[2].count
            let d = i[3].count
            let e = i[4].count
            let an = a * b * c * d *e 
            answers += an
        }
        return answers 
}


/******************testing**************************/

//let 时时彩五星直选复式 = ssc.wx.zix.fs(choosed:6)
//let 时时彩五星一码不定位 = ssc.wx.bdw.m1(choosed:6)

protocol 不定位协议 {}
extension 不定位协议 {
    
    // 一码
    func 一码(_ n:Int)->Int {
        switch n {
        case 0..<10:
            return binomialCoefficient(n, choose: 1)
        default:
            return 0
        }
    }
    
    //二码不定位
    func 二码(_ n:Int)->Int {
        switch n {
        case 0..<10:
            return binomialCoefficient(n, choose: 2)
        default:
            return 0
        }
    }
    
    //三码不定位
    func 三码(_ n:Int)->Int {
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
    func 直选复式(_ n:[Int])->Int {
        var answers:Int = 1
        for i in n {
            let an = permutations(i, 1)
            answers *= an
        }
        return answers
    }
}
protocol 五星组选协议{}
extension 五星组选协议{
    func 五星组选120(_ n:Int) -> Int{
        return binomialCoefficient(n, choose: 5)
    }
    func 五星组选60(_ n:[Int]) -> Int{
        return 0
    }
    func 五星组选30(_ n:[Int]) -> Int{
        return 0
    }
    func 五星组选20(_ n:[Int]) -> Int{
        return 0
    }
    func 五星组选10(_ n:[Int]) -> Int{
        return 0
    }
    func 五星组选5(_ n:[Int]) -> Int{
        return 0
    }
}

protocol 四星组选协议{}
extension 四星组选协议{
    func 四星组选24(_ n:Int) -> Int{
        return 0
    }
    func 四星组选12(_ n:Int) -> Int{
        return 0
    }
    func 四星组选6(_ n:Int) -> Int{
        return 0
    }
    func 四星组选4(_ n:Int) -> Int{
        return 0
    }
}


struct 时时彩{
    var 五星:五星结构体 = 五星结构体()
    var 四星:四星结构体 = 四星结构体()
    
    
    struct 五星结构体:直选协议 ,不定位协议, 五星组选协议 {
        
    }
    struct 四星结构体:直选协议 ,不定位协议, 四星组选协议 {
        
    }

}

let 重庆时时彩 = 时时彩()
let 直选复式 = 重庆时时彩.五星.直选复式([5,1,1,1,1])




