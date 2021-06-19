//
//  BunnyBag.swift
//  FoodRabbit
//
//  Created by 謝昀羲 on 2021/6/20.
//

import Foundation

class BunnyBag {
    private var goods: [String?] = []
    // 取貨
    func putIn(good: String) {
        self.goods.append(good)
    }
    // 交貨
    func handIn() {
        
    }
}
