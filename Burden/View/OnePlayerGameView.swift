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
                ZStack{
                    Playground()
                    VStack{
                        Spacer()
                        Instructions().padding(.horizontal)
                    }
                }
            }
        }
    }
}

// Instruction that appear the first time you play the game
struct Instructions: View{
    var body: some View{
        ZStack{
            VStack{
                Spacer()
                Text("Tap the elements in the\norder they've appeared in")
                    .multilineTextAlignment(.center)
            }
        }
    }
}


// This is the playground where the game updates
struct Playground: View {
    var body: some View{
        ZStack{
            Grid {
                ForEach(0..<9){ _ in
                    GridRow {
                        ForEach(0..<7) { _ in
                            Image(getEmotionName(theEmotion: EmotionName.allCases.randomElement()!))
                                .resizable()
                                .frame(width: 45,height: 45)
                                .scaledToFit()
                            //Image(getSpartito(theEmotion: EmotionName.allCases.randomElement()!))
                        }
                    }
                }
            }
        }
    }
}

// This is the header of the game
struct Header: View{
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color("BackgroundColorHeader"))
                .frame(height: 250)
                .shadow(radius: 1)
            
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
                    //Afficher chaque elements de la partition
                    Grid() {
                        GridRow {
                            ForEach(0..<8){ emo in
                                Image(getEmotionName(theEmotion:  getSpartito(theEmotion: Sad).aPlay[emo].emotionTitle))
                                    .resizable()
                                    .frame(width: 25,height: 25)
                                    .scaledToFit()
                            }
                        }
                        Divider()
                            .gridCellUnsizedAxes(.horizontal)
                        GridRow {
                            ForEach(8..<16){ emo in
                                Image(getEmotionName(theEmotion:  getSpartito(theEmotion: Sad).aPlay[emo].emotionTitle))
                                    .resizable()
                                    .frame(width: 25,height: 25)
                                    .scaledToFit()
                            }
                        }
                    }
                }
            }.padding(.horizontal)
        }
        
    }
}




struct OnePlayerGameView_Previews: PreviewProvider {
    static var previews: some View {
        OnePlayerGameView()
    }
}
