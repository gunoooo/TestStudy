//
//  CookStubTests.swift
//  TestStudyTests
//
//  Created by Park on 2021/02/01.
//

@testable import TestStudy

/**
    테스트에서 호출된 요청에 대해 미리 준비해 둔 결과를 제공하는 객체
 
    cook 함수가 각각 언제나 동일한 가격을 리턴하여 준다.
 */
class CookStub: CookProtocol {
    func cookHamburger(hamburger: Hamburger) -> Int {
        return 5000
    }
    
    func cookChicken(chicken: Chicken) -> Int {
        return 10000
    }
    
    func cookSoup(soup: Soup) -> Int {
        return 3000
    }
}
