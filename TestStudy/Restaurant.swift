//
//  Cook.swift
//  TestStudy
//
//  Created by Park on 2021/02/01.
//

import Foundation

protocol RestaurantProtocol {
    func sell(cooking: Any)
    func checkMoney() -> Int
}

protocol CookProtocol {
    func cookHamburger(hamburger: Hamburger) -> Int
    func cookChicken(chicken: Chicken) -> Int
    func cookSoup(soup: Soup) -> Int
}

protocol EmployeeProtocol {
    func sayHello()
}

class Restaurant: RestaurantProtocol {
    var cook: CookProtocol?
    var employee: EmployeeProtocol?
    
    private var money: Int = 0
    
    init(
        cook: CookProtocol,
        employee: EmployeeProtocol
    ) {
        self.cook = cook
        self.employee = employee
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
    
    func checkMoney() -> Int {
        return money
    }
}

class Cook: CookProtocol {
    private let tax = 1000
    
    func cookHamburger(hamburger: Hamburger) -> Int {
        print("cooking Hamburger")
        do {
            sleep(5)
        }
        print("cooked Hamburger")
        return hamburger.price + tax
    }
    
    func cookChicken(chicken: Chicken) -> Int {
        print("cooking Chicken")
        do {
            sleep(5)
        }
        print("cooked Chicken")
        return chicken.price + tax
    }
    
    func cookSoup(soup: Soup) -> Int {
        print("cooking Soup")
        do {
            sleep(5)
        }
        print("cooked Soup")
        return soup.price + tax
    }
}

class Employee: EmployeeProtocol {
    func sayHello() {
        print("Hello")
    }
}
