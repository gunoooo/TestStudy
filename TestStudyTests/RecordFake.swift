//
//  RecordFake.swift
//  TestStudyTests
//
//  Created by 60067664 on 2021/02/08.
//

@testable import TestStudy

/**
    복잡한 로직이나 객체 내부에서 필요로 하는 다른 외부 객체들의 동작을 단순화하여 구현한 객체

    Record 클래스는 CoreData에 의존적이기 때문에 Fake 객체를 사용하였다
 
    write와 check 함수를 DB의 insert, select 동작을 하는 것 처럼 보이도록 구현하였다.
*/
class RecordFake: RecordProtocol {
    
    private var moneys = [Int]()
    
    func write(money: Int) {
        moneys.append(money)
    }
    
    func check() -> [Int] {
        return moneys
    }
}
