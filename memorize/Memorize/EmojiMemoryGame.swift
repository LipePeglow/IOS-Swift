//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Felipe on 03/03/22.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private(set) var model: MemoryGame<String> = EmojiMemoryGame.creatememoryGame()
    
    private static func creatememoryGame() -> MemoryGame<String>{
        let emojis = ["👻","🎃","🕷","💀","🧟‍♂️","🧙🏻‍♂️"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    
    //MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card>{
        model.cards 
    }
    
    //MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
    
    func resetGame (){
        model = EmojiMemoryGame.creatememoryGame()
    }
}
