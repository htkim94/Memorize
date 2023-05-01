//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Hotae Kim on 2023-05-01.
//

import SwiftUI

class EmojiMemoryGame {
    static let vehicleEmojis: [String] = ["✈️", "🚗", "🚂", "🚲", "🛵", "🏎️", "🚁", "🚢", "🚒", "🚓", "🚃", "🚌", "🚛", "🚜", "🏍️"]
    static let faceEmojis: [String] = ["😁", "😆", "🥹", "😂", "🥲", "😍", "😎", "😘", "🥳", "🥸", "😡", "🥶", "😱", "😵‍💫", "🤩"]
    static let sportsEmojis: [String] = ["⚽️", "🏀", "🏈", "⚾️", "🏐", "🎱", "🏓", "🏸", "🏒", "🥊", "🏹", "🥍", "🛼", "🥌", "🎳"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            EmojiMemoryGame.vehicleEmojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
