//
//  CookSpyTests.swift
//  TestStudyTests
//
//  Created by Park on 2021/02/01.
//

@testable import TestStudy

/**
    Stub의 역할을 가지면서 호출된 내용에 대해 약간의 정보를 기록하는 객체
 
    실제 객체처럼 동작시킬 수도 있고, 필요한 부분에 대해서는 Stub처럼 동작을 지정할 수도 있다.
 
    각각의 함수가 호출 된 지와 메뉴가 요리된  횟수를 기록한다.
 */
class CookSpy: CookProtocol {
    var cookHamburgerCalled = false
    var cookChickenCalled = false
    var cookSoupCalled = false
    
    var hamburgerCount = 0
    var chickenCount = 0
    var soupCount = 0
    
    func cookHamburger(hamburger: Hamburger) -> Int {
        cookHamburgerCalled = true
        hamburgerCount += 1
        return 5000
    }
    
    func cookChicken(chicken: Chicken) -> Int {
        cookChickenCalled = true
        chickenCount += 1
        return chicken.price
    }
    
    func cookSoup(soup: Soup) -> Int {
        cookSoupCalled = true
        soupCount  += 1
        return 3000
    }
}
