//
//  GameView.swift
//  FoodRabbit
//
//  Created by 謝昀羲 on 2021/6/6.
//

import SwiftUI

struct GameView: View {
    @StateObject var game = GameViewModel()
    var body: some View {
        ZStack{
            Image("road")
                .resizable()
            VStack{
                HStack{
                    ZStack{
                        Image("donuts")
                            .resizable()
                            .frame(width: 150.0, height: 150.0)
                            .position(x: 75, y: 200)
                        Menu("__________\n\n\n"){
                            ForEach(game.donuts.getMenu().indices){ (index) in
                                let good = game.donuts.getMenu()[index]
                                Button(good, action: {game.bunnyBag.add(good: good)}
                                )
                            }
                        }
                        .foregroundColor(.clear)
                        .frame(width: 100, height: 100)
                        .position(x: 75, y: 200)
                    }
                    ZStack{
                        Image("pizza")
                            .resizable()
                            .frame(width: 150.0, height: 150.0)
                            .position(x: 120, y: 200)
                        Menu("__________\n\n\n"){
                            ForEach(game.pizza.getMenu().indices){ (index) in
                                Button(action: {game.bunnyBag.add(good: game.pizza.getMenu()[index])}, label: {
                                    Text(game.pizza.getMenu()[index])
                                })
                            }
                        }
                        .foregroundColor(.clear)
                        .frame(width: 150.0, height: 150.0)
                        .position(x: 120, y: 200)
                    }
                }
                
                HStack{
                    ZStack{
                        Image("sweets")
                            .resizable()
                            .frame(width: 150.0, height: 150.0)
                            .position(x: 75, y: 150)
                        Menu("__________\n\n\n"){
                            ForEach(game.sweets.getMenu().indices){ (index) in
                                Button(action: {game.bunnyBag.add(good: game.sweets.getMenu()[index])}, label: {
                                    Text(game.sweets.getMenu()[index])
                                })
                            }
                        }
                        .foregroundColor(.clear)
                        .frame(width: 150.0, height: 150.0)
                        .position(x: 75, y: 150)
                    }
                    ZStack{
                        Image("bakery")
                            .resizable()
                            .frame(width: 150.0, height: 150.0)
                            .position(x: 120, y: 150)
                        Menu("__________\n\n\n"){
                            ForEach(game.bakery.getMenu().indices){ (index) in
                                Button(action: {game.bunnyBag.add(good: game.bakery.getMenu()[index])}, label: {
                                    Text(game.bakery.getMenu()[index])
                                })
                            }
                        }
                        .foregroundColor(.clear)
                        .frame(width: 150.0, height: 150.0)
                        .position(x: 75, y: 150)
                    }
                }
                
                HStack{
                    ZStack{
                        Image("icecream")
                            .resizable()
                            .frame(width: 150.0, height: 150.0)
                            .position(x: 75, y: 120)
                        Menu("__________\n\n\n"){
                            ForEach(game.icecream.getMenu().indices){ (index) in
                                Button(action: {game.bunnyBag.add(good: game.icecream.getMenu()[index])}, label: {
                                    Text(game.icecream.getMenu()[index])
                                })
                            }
                        }
                        .foregroundColor(.clear)
                        .frame(width: 150.0, height: 150.0)
                        .position(x: 75, y: 120)
                    }
                    ZStack{
                        Image("restaurant")
                            .resizable()
                            .frame(width: 150.0, height: 150.0)
                            .position(x: 120, y: 120)
                        Menu("__________\n\n\n"){
                            ForEach(game.restaurant.getMenu().indices){ (index) in
                                Button(action: {game.bunnyBag.add(good: game.restaurant.getMenu()[index])}, label: {
                                    Text(game.restaurant.getMenu()[index])
                                })
                            }
                        }
                        .foregroundColor(.clear)
                        .frame(width: 150.0, height: 150.0)
                        .position(x: 120, y: 120)
                    }
                }
                ZStack{
                    Image("bunny")
                        .resizable()
                        .frame(width: 100.0, height: 150.0)
                    Menu("________\n\n\n"){
                        Text("Bag")
                        ForEach(game.bunnyBag.getItems().indices){ (index) in
                            Text(game.bunnyBag.getItems()[index] ?? "empty")
                        }
                    }
                    .foregroundColor(.clear)
                }
            }
            Menu("QUEST") {
                if let list = game.mission.getOrderList() {
                    ForEach(list.indices) { (index) in
                        Text(list[index] ?? "empty")
                    }
                }
                Button(action: {}, label: {
                    Text("交貨")
                })
            }
            .frame(width: 100.0, height: 40.0)
            .background(Color.white)
            .cornerRadius(10.0)
            .position(x: 70, y: 70)
            
            Text("$\(game.bunnyBag.getMoney())")
                .background(Color.white)
                .foregroundColor(.blue)
                .position(x: 50, y: 870)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
