//
//  Cook.swift
//  TestStudy
//
//  Created by Park on 2021/02/01.
//

import Foundation

protocol RestaurantProtocol {
    func sell(cooking: Any)
    func checkToday() -> Int
    func checkBefore() -> [Int]
    func close()
}

class Restaurant: RestaurantProtocol {
    var cook: CookProtocol?
    var employee: EmployeeProtocol?
    var record: RecordProtocol?
    
    private var money: Int = 0
    
    init(
        cook: CookProtocol,
        employee: EmployeeProtocol,
        record: RecordProtocol
    ) {
        self.cook = cook
        self.employee = employee
        self.record = record
        employee.sayHello()
    }
    
    func sell(cooking: Any) {
        switch cooking {
            case is Hamburger:
                money += cook!.cookHamburger(hamburger: cooking as! Hamburger)
            case is Chicken:
                money += cook!.cookChicken(chicken: cooking as! Chicken)
            case is Soup:
                money += cook!.cookSoup(soup: cooking as! Soup)
            default:
                print("Error")
        }
    }
    
    func checkToday() -> Int {
        return money
    }
    
    func checkBefore() -> [Int] {
        return record?.check() ?? [Int]()
    }
    
    func close() {
        record?.write(money: money)
        money = 0
    }
}
