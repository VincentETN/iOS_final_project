//
//  BunnyBag.swift
//  FoodRabbit
//
//  Created by 謝昀羲 on 2021/6/20.
//

import Foundation

class BunnyBag {
    private var goods: [String?] = []
    private var money: Int = 100
    // 取貨
    func add(good: String) {
        self.goods.append(good)
        money -= 1
    }
    
    func getItems() -> [String?] {
        return self.goods
    }
    
    func getMoney() -> Int {
        return money
    }
    
    func size() -> Int {
        return goods.count
    }
    
    func getReward(reward: Int) {
        money += reward
    }
    // 交貨
    func removeAll() {
        self.goods.removeAll()
    }
}
