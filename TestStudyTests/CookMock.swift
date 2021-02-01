//
//  CookMokTests.swift
//  TestStudyTests
//
//  Created by Park on 2021/02/01.
//

@testable import TestStudy
import XCTest

/**
    호출에 대한 기대를 명세하고 내용에 따라 동작하도록 프로그래밍 된 객체
 
    각 메뉴별 요리 횟수와 총수입을 기록하고 기대한 값과 같은지 비교한다.
 */
class CookMock: CookProtocol {
    var hamburgerCount = 0
    var chickenCount = 0
    var soupCount = 0
    
    var hamburgerAllPrice = 0
    var chickenAllPrice = 0
    var soupAllPrice = 0
    
    func cookHamburger(hamburger: Hamburger) -> Int {
        hamburgerCount += 1
        let price = hamburger.price
        hamburgerAllPrice += price
        return price
    }
    
    func cookChicken(chicken: Chicken) -> Int {
        chickenCount += 1
        let price = chicken.price
        chickenAllPrice += price
        return price
    }
    
    func cookSoup(soup: Soup) -> Int {
        soupCount += 1
        let price = soup.price
        soupAllPrice += price
        return price
    }
    
    func verifyCookHamburger(
        count: Int,
        price: Int
    ) {
        XCTAssertEqual(hamburgerCount, count)
        XCTAssertEqual(hamburgerAllPrice, price)
    }
    
    func verifyCookChicken(
        count: Int,
        price: Int
    ) {
        XCTAssertEqual(chickenCount, count)
        XCTAssertEqual(chickenAllPrice, price)
    }
    
    func verifyCookSoup(
        count: Int,
        price: Int
    ) {
        XCTAssertEqual(soupCount, count)
        XCTAssertEqual(soupAllPrice, price)
    }
}
