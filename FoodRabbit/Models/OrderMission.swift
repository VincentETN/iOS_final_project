//
//  OrderList.swift
//  FoodRabbit
//
//  Created by 謝昀羲 on 2021/6/19.
//

import Foundation

class OrderMission {
    private var orderList: [String?] = []
    // 下訂單任務
    func questAnOrder(menu: [String]) {
        self.orderList = menu
    }
    
    func getOrderList() -> [String?] {
        return orderList
    }
    // 核對訂單
    func checkList(items: [String?]) {
        
    }
    // 結束訂單
    func finishOrder() {
        orderList.removeAll()
    }
}
