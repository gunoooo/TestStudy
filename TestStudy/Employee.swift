//
//  Employee.swift
//  TestStudy
//
//  Created by 60067664 on 2021/02/08.
//

import Foundation

protocol EmployeeProtocol {
    func sayHello()
}

class Employee: EmployeeProtocol {
    func sayHello() {
        print("Hello")
    }
}
