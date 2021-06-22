//
//  GameViewModel.swift
//  FoodRabbit
//
//  Created by 謝昀羲 on 2021/6/22.
//

import Foundation

class GameViewModel: ObservableObject {
    @Published var bunnyBag = BunnyBag()
    @Published var bakery = Shop(menu: ["法式長棍", "羅馬生乳包", "韓國香蒜爆漿麵包", "日式炒麵麵包", "台式香蔥麵包"])
    @Published var donuts = Shop(menu: ["草莓黃金圈", "巧克力黃金圈", "蜜糖波提", "優格波提"])
    @Published var icecream = Shop(menu: ["珍藏鐵觀音", "宇治莓好", "草莓美莓", "愛戀巧克力", "可可香蕉屋"])
    @Published var pizza = Shop(menu: ["星級白醬海鮮", "和風章魚燒", "煙燻黃金總匯", "超級夏威夷", "海陸大亨"])
    @Published var restaurant = Shop(menu: ["波士頓龍蝦", "伊比利豬", "日本和牛", "紐西蘭羊排", "東港黑鮪魚"])
    @Published var sweets = Shop(menu: ["檸檬塔", "磅蛋糕", "提拉米蘇", "馬卡龍", "芙蕾傑"])
    @Published var mission = OrderMission()
    
    lazy var menu1 = bakery.getMenu() + donuts.getMenu() + icecream.getMenu() + pizza.getMenu() + restaurant.getMenu()
    lazy var allMenu = menu1 + sweets.getMenu()
    
    func start() {
        var list: [String] = []
        for _ in 1...5 {
            var item = allMenu.randomElement()!
            while list.contains(item) {
                item = allMenu.randomElement()!
            }
            list.append(item)
        }
        mission.questAnOrder(menu: list)
    }
    
    func finish() {
        for item in mission.getOrderList() {
            if bunnyBag.getItems().contains(item ?? " ") {
                bunnyBag.getReward(reward: 5)
            }else {
                bunnyBag.getReward(reward: -4)
            }
        }
        mission.finishOrder()
        bunnyBag.removeAll()
    }
}
