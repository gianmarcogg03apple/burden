//
//  OnePlayerGameView.swift
//  Burden
//
//  Created by Sarah Ndenbe on 20/10/22.
//

import SwiftUI

struct OnePlayerGameView: View {
    var body: some View {
        ZStack{
            VStack{
                Header()
                Playground()
                Instructions()
            }
        }
    }
}

// Instruction that appear the first time you play the game
struct Instructions: View{
    var body: some View{
        VStack{
            Text("Tap the elements in the\norder they've appeared in")
                .multilineTextAlignment(.center)
        }.padding(.bottom)
        
    }
}

// This is the playground where the game updates
struct Playground: View {
    var body: some View{
        ZStack{
            
            Rectangle()
                .foregroundColor(Color("BackgroundColorPlayground"))
            
        }
    }
}

// This is the header of the game
struct Header: View{
    var body: some View {
        ZStack{
            
            Rectangle()
                .foregroundColor(Color("BackgroundColorHeader"))
                .frame(height: 200)
            VStack{
                
                HStack{
                    Text("high score:")
                    Spacer()
                    Image(systemName: "pause.fill")
                }.padding(.horizontal)
                
                Text("0") // This is the score to update
                    .font(.system(size: 60))
                    .padding(15)
                // Spacer()
                HStack{ // This is the Spartito
                    Text("hint:")
                    Spacer()
                }.padding(.horizontal)
            }
            
        }
    }
}


struct OnePlayerGameView_Previews: PreviewProvider {
    static var previews: some View {
        OnePlayerGameView()
    }
}
