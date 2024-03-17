//
//  ContentView.swift
//  War Card Game
//
//  Created by Artiom on 22/02/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card2"
    @State var cpuCard = "card3"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-wood-grain").resizable().ignoresSafeArea()
            
            VStack {
                Image("logo")
                Spacer()
                    HStack {
                        Spacer()
                        Image(playerCard)
                        Spacer()
                        Image(cpuCard)
                        Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("PLAYER").bold()
                        Text(String(playerScore))
                    }
                    Spacer()
                    VStack{
                        Text("CPU").bold()
                        Text(String(cpuScore))
                    }
                    Spacer()
                }.foregroundColor(.white).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
            }
        }
        
    }
    
    func deal(){
        //Player card
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        //Cpu card
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        //Update scores
        if playerCardValue > cpuCardValue{
            playerScore += 1
        }else if playerCardValue < cpuCardValue{
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
