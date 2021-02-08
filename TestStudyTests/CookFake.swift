//
//  CookFakeTests.swift
//  TestStudyTests
//
//  Created by Park on 2021/02/01.
//

@testable import TestStudy

/**
    복잡한 로직이나 객체 내부에서 필요로 하는 다른 외부 객체들의 동작을 단순화하여 구현한 객체
 
    cook 함수를 딜레이, 세금과 같은 기능 없이 가격만 리턴해주도록 단순화 하여 구현하였다.
 */
class CookFake: CookProtocol {
    func cookHamburger(hamburger: Hamburger) -> Int {
        return hamburger.price
    }
    
    func cookChicken(chicken: Chicken) -> Int {
        return chicken.price
    }
    
    func cookSoup(soup: Soup) -> Int {
        return soup.price
    }
}
