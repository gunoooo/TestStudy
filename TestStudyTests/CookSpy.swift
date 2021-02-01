//
//  CookSpyTests.swift
//  TestStudyTests
//
//  Created by Park on 2021/02/01.
//

@testable import TestStudy

/**
    Stub의 역할을 가지면서 호출된 내용에 대해 약간의 정보를 기록하는 객체
 
    각각의 메뉴가 요리된  횟수와 주문을 기록한다.
 */
class CookSpy: CookProtocol {
    var hamburgerCount = 0
    var chickenCount = 0
    var soupCount = 0
    
    var orderHistory = [Any]()
    
    func cookHamburger(hamburger: Hamburger) -> Int {
        hamburgerCount += 1
        orderHistory.append(hamburger)
        return 5000
    }
    
    func cookChicken(chicken: Chicken) -> Int {
        chickenCount += 1
        orderHistory.append(chicken)
        return 10000
    }
    
    func cookSoup(soup: Soup) -> Int {
        soupCount  += 1
        orderHistory.append(soup)
        return 3000
    }
}
