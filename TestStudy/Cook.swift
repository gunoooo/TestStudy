//
//  Cook.swift
//  TestStudy
//
//  Created by 60067664 on 2021/02/08.
//

import Foundation

protocol CookProtocol {
    func cookHamburger(hamburger: Hamburger) -> Int
    func cookChicken(chicken: Chicken) -> Int
    func cookSoup(soup: Soup) -> Int
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
