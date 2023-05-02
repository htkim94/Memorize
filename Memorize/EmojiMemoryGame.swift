//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Hotae Kim on 2023-05-01.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    static let vehicleEmojis: [String] = ["✈️", "🚗", "🚂", "🚲", "🛵", "🏎️", "🚁", "🚢", "🚒", "🚓", "🚃", "🚌", "🚛", "🚜", "🏍️"]
    static let faceEmojis: [String] = ["😁", "😆", "🥹", "😂", "🥲", "😍", "😎", "😘", "🥳", "🥸", "😡", "🥶", "😱", "😵‍💫", "🤩"]
    static let sportsEmojis: [String] = ["⚽️", "🏀", "🏈", "⚾️", "🏐", "🎱", "🏓", "🏸", "🏒", "🥊", "🏹", "🥍", "🛼", "🥌", "🎳"]
    
    //    FOR THEME UPDATE IN FUTURE
    //    static let themes: [String: [String: Any]] = [
    //        "vehicles": [
    //            "emojis": ["✈️", "🚗", "🚂", "🚲", "🛵", "🏎️", "🚁", "🚢", "🚒", "🚓", "🚃", "🚌", "🚛", "🚜", "🏍️"],
    //            "startNumOfPairsOfCards": 8,
    //            "themeColor": "blue"
    //        ],
    //        "faces": [
    //            "emojis": ["😁", "😆", "🥹", "😂", "🥲", "😍", "😎", "😘", "🥳", "🥸", "😡", "🥶", "😱", "😵‍💫", "🤩"],
    //            "startNumOfPairsOfCards": 10,
    //            "themeColor": "yellow"
    //        ],
    //        "sports": [
    //            "emojis": ["⚽️", "🏀", "🏈", "⚾️", "🏐", "🎱", "🏓", "🏸", "🏒", "🥊", "🏹", "🥍", "🛼", "🥌", "🎳"],
    //            "startNumOfPairsOfCards": 9,
    //            "themeColor": "blue"
    //        ]
    //    ]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 8) { pairIndex in
            EmojiMemoryGame.vehicleEmojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
