//
//  GameView.swift
//  FoodRabbit
//
//  Created by 謝昀羲 on 2021/6/6.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        ZStack{
            Image("road")
                .resizable()
            VStack{
                HStack{
                    Button(action: {}, label: {
                        Image("donuts")
                            .resizable()
                    })
                    .frame(width: 150.0, height: 150.0)
                    .position(x: 75, y: 200)
                    
                    Button(action: {}, label: {
                        Image("pizza")
                            .resizable()
                    })
                    .frame(width: 150.0, height: 150.0)
                    .position(x: 120, y: 200)
                }
                
                HStack{
                    Button(action: {}, label: {
                        Image("sweets")
                            .resizable()
                    })
                    .frame(width: 150.0, height: 150.0)
                    .position(x: 75, y: 150)
                    
                    Button(action: {}, label: {
                        Image("bakery")
                            .resizable()
                    })
                    .frame(width: 150.0, height: 150.0)
                    .position(x: 120, y: 150)
                }
                
                HStack{
                    Button(action: {}, label: {
                        Image("icecream")
                            .resizable()
                    })
                    .frame(width: 150.0, height: 150.0)
                    .position(x: 75, y: 120)
                    
                    Button(action: {}, label: {
                        Image("restaurant")
                            .resizable()
                    })
                    .frame(width: 150.0, height: 150.0)
                    .position(x: 120, y: 120)
                }
                
                Image("bunny")
                    .resizable()
                    .frame(width: 100.0, height: 150.0)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
