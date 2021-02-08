//
//  Record.swift
//  TestStudy
//
//  Created by 60067664 on 2021/02/08.
//

import Foundation
import CoreData

protocol RecordProtocol {
    func write(money: Int)
    func check() -> [Int]
}

class Record: RecordProtocol {
    func write(money: Int) {
        // CoreData Insert
    }
    
    func check() -> [Int] {
        // CoreData Select
        return [Int]()
    }
}
