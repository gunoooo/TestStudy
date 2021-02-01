//
//  CookDummyTest.swift
//  TestStudyTests
//
//  Created by Park on 2021/02/01.
//

@testable import TestStudy

/**
    기능을 구현하지 않은 빈 객체
 
    인스턴스화 된 객체가 필요하지만 기능은 필요하지 않은 경우에 사용
 
    Employee의 구현체가 필요하지만 실제 sayHello함수가 Restaurant 객체에 영향을 미치지 않기 때문에
    아무런 동작을 하지 않아도 테스트에 영향을 미치지 않는다.
 */

class EmployeeDummy: EmployeeProtocol {
    func sayHello() {
        
    }
}
