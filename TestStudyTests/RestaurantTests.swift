//
//  RestaurantTests.swift
//  TestStudyTests
//
//  Created by Park on 2021/02/02.
//

@testable import TestStudy
import XCTest

class RestaurantTests: XCTestCase {
    private var sut: Restaurant?
    
    func testExample() {
        
        // Given
        
        /**
            테스트를 위해 준비 하는 과정
            변수, 입력 값등을 정의하거나 sut, test double 객체를 정의하는 구문도 Given에 포함
         */
        
        // When
        
        /**
            액션을 하는 테스트를 실행하는 과정
         */
        
        // Then
        
        /**
            테스트를 검증하는 과정
         */
    }
    
    /**
        sell 함수의 매개변수를 Hamburger로 넘겨주었을 때 Cook의 cookHamburger 함수를 호출하는지
     */
    func testSellShouldCallCookToCookHamburger_spy() {
        
        // Given
        
        let cookSpy = CookSpy()
        let employeeDummy = EmployeeDummy()
        let recordFake = RecordFake()
        
        sut = Restaurant(
            cook: cookSpy,
            employee: employeeDummy,
            record: recordFake
        )
        
        let request = Hamburger(name: "싸이버거", price: 5000)
        
        // When
        
        sut?.sell(cooking: request)
        
        // Then
        
        XCTAssertTrue(cookSpy.cookHamburgerCalled)
    }
    
    /**
        sell 함수의 매개변수를 Hamburger로 넘겨주었을 때 Cook의 hamburger count (주문 횟수) 가 올바른 값인지
     */
    func testSellShouldEqualCookToHamburgerCount_spy() {
        
        // Given
        
        let cookSpy = CookSpy()
        let employeeDummy = EmployeeDummy()
        let recordFake = RecordFake()
        
        sut = Restaurant(
            cook: cookSpy,
            employee: employeeDummy,
            record: recordFake
        )
        
        let request = Hamburger(name: "싸이버거", price: 5000)
        
        // When
        
        sut?.sell(cooking: request)
        
        // Then
        
        XCTAssertEqual(cookSpy.hamburgerCount, 1)
    }
    
    /**
        sell 함수의 매개변수를 Hamburger로 넘겨주었을 때 Cook의 cookHamburger 함수를 호출하고, hamburger count (주문 횟수) 와 price (총가격) 가 올바른 값인지
     */
    func testSellShouldEqualCookToHamburgerCountAndHamburgerAllPrice_mock() {
        
        // Given
        
        let cookMock = CookMock()
        let employeeDummy = EmployeeDummy()
        let recordFake = RecordFake()
        
        sut = Restaurant(
            cook: cookMock,
            employee: employeeDummy,
            record: recordFake
        )
        
        let request = Hamburger(name: "싸이버거", price: 5000)
        
        // When
        
        sut?.sell(cooking: request)
        
        // Then
        
        cookMock.verifyCookHamburger(count: 1, price: 5000)
    }
}
