//
//  MemoryGame.swift
//  cs193p2
//
//  Created by 諸田紘一 on R 3/02/22.
//  Copyright © Reiwa 3 諸田紘一. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent>{
    var cards: Array<Card>
    
    func choose(card: Card){
        print("card chosen: \(card)")
    }
    
    init(numberOfPairOfCards: Int, cardContentFactory:(Int)->CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairOfCards{
            let content = cardContentFactory(pairIndex)
            cards.append(Card(isMatched: false, content: content, id: pairIndex*2))
            cards.append(Card(isMatched: false, content: content, id: pairIndex*2+1))
            
        }
    }
    
    struct Card: Identifiable{
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
