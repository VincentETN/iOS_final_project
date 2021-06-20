//
//  Shop.swift
//  FoodRabbit
//
//  Created by 謝昀羲 on 2021/6/19.
//

import Foundation

class Shop {
    var timer = Timer()
    private var menu: [String]
    // 製作產品
    func makeProduct() {
        //self.timer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: , userInfo: nil, repeats: false)
    }
    // 查看菜單
    func getMenu() -> [String]{
        return self.menu
    }
    
    init(menu: [String]) {
        self.menu = menu
    }
}
