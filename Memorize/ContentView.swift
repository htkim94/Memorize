//
//  ContentView.swift
//  Memorize
//
//  Created by Hotae Kim on 2023-03-16.
//

import SwiftUI

struct ContentView: View {
    let columns = [GridItem(.adaptive(minimum: 80))]
    
    var emojis: [String] = ["✈️", "🚗", "🚂", "🚲", "🛵", "🏎️", "🚁", "🚢", "🚒", "🚓", "🚃", "🚌", "🚛", "🚜", "🏍️"]
    @State var emojiCount: Int = 6
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fill)
                    }
                }
                .foregroundColor(.red)
            }
            Spacer()
            HStack {
                removeButton
                Spacer()
                Text("Shuffle").foregroundColor(.accentColor)
                Spacer()
                addButton
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
    }
    
    var removeButton: some View {
        Button(action: {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        }, label: {
            Image(systemName: "minus.circle")
        })
    }
    
    var addButton: some View {
        Button(action: {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        }, label: {
            Image(systemName: "plus.circle")
        })
    }
}

struct CardView: View {
    var content: String
    @State var opened: Bool = true
    let cardShape = RoundedRectangle(cornerRadius: 20)
    
    var body: some View {
        ZStack {
            if opened {
                cardShape.fill().foregroundColor(.white)
                cardShape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                cardShape.fill()
            }
        }
        .onTapGesture {
            opened = !opened
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
