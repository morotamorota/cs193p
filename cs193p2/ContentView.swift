//
//  ContentView.swift
//  cs193p2
//
//  Created by 諸田紘一 on R 3/02/22.
//  Copyright © Reiwa 3 諸田紘一. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    var body: some View {
        return HStack(){
            ForEach(viewModel.cards){ card in
                CardView(card: card ).onTapGesture{
                    self.viewModel.choose(card: card)
                }
        }
    }
        .padding()
        .foregroundColor(Color.orange)
        .font(.largeTitle)
    
    }
}

struct CardView: View{
    var card: MemoryGame<String>.Card
    var body: some View{
        ZStack{
            if card.isFaceUp {
            RoundedRectangle(cornerRadius:10.0).stroke(lineWidth: 3)
            RoundedRectangle(cornerRadius:10.0).fill(Color.white)
                Text(card.content)
            }else{
            RoundedRectangle(cornerRadius:10.0).fill()
            }
        }
    }
}








struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
