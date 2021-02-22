//
//  EmojiMemoryGame.swift
//  cs193p2
//
//  Created by 諸田紘一 on R 3/02/22.
//  Copyright © Reiwa 3 諸田紘一. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame{
    private var model:MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String>{
        let emojis: Array<String> = ["🥴","🤧","🤐"]
        return MemoryGame<String>(numberOfPairOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
    }
    }
        
    
    // MARK = Access to the Model
    var cards: Array<MemoryGame<String>.Card>{
        model.cards
    }
    
    
    //MARK: - INtent(s)
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
    
}
