//
//  OnePlayerGameView.swift
//  Burden
//
//  Created by Sarah Ndenbe on 20/10/22.
//

import SwiftUI
import CoreHaptics

struct OnePlayerGameView: View {
    var theEmotionToPlay : Emotion
    var body: some View {
        ZStack{
            VStack{
                Header(theEmotionToPlay: theEmotionToPlay).ignoresSafeArea(.container)
                ZStack{
                    Playground(theEmotionToPlay: theEmotionToPlay)
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
            }.padding(50)
        }
    }
}


// This is the playground where the game updates
struct Playground: View {
    var theEmotionToPlay : Emotion
    var body: some View{
        ZStack{
            LazyVGrid(columns: Array(repeating: GridItem(spacing: 4), count: 7), spacing: 4) {
                ForEach(0..<16){ nemo in
                    var sprites = [String](repeating: "o_o", count: 54)
                    GridRow {
                        ForEach(0..<1) { emo in
                            var tab = (getEmotionName(theEmotion:getSpartito(theEmotion: theEmotionToPlay).aPlay[nemo].emotionTitle))
                            
                            if (nemo % 3 == 0){
                                Button {
                                    // sound and vibrate
                                    getSpartito(theEmotion: theEmotionToPlay).aPlay[nemo]
                                } label: {
                                    
                                    Image(tab)
                                        .resizable()
                                        .frame(width: 45,height: 45)
                                        .scaledToFit()
                                    
                                }
                                Text(sprites[nemo]).foregroundColor(Color("BackgroundColorPlayground"))
                                Text(sprites[nemo]).foregroundColor(Color("BackgroundColorPlayground"))
                            }else{
                                Text(sprites[nemo]).foregroundColor(Color("BackgroundColorPlayground"))
                                Button {
                                    // baisser l'opacity et rendre visible l'element suivant
                                    // incrementerLeScore
                                } label: {
                                    
                                    Image(tab)
                                        .resizable()
                                        .frame(width: 45,height: 45)
                                        .scaledToFit()
                                }
                                
                                Text(sprites[nemo]).foregroundColor(Color("BackgroundColorPlayground"))
                                Text(sprites[nemo]).foregroundColor(Color("BackgroundColorPlayground"))
                                Text(sprites[nemo]).foregroundColor(Color("BackgroundColorPlayground"))
                                
                            }
                            
                            
                            
                        }
                    }
                }
            }
        }
    }
}

// This is the header of the game
struct Header: View{
    var theEmotionToPlay : Emotion
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color("BackgroundColorHeader"))
                .frame(height: 350)
                .shadow(radius: 1)
            
            VStack{
                HStack{
                    Text("high score:").opacity(0.6)
                    Spacer()
                    Button {
                        //
                    } label: {
                        Image(systemName: "pause.fill")
                            .font(.title2)
                            .foregroundColor(.black)
                    }
                    
                }.padding()
                // This is the score to update
                Image(getScore(theScore: Score.One))
                    .resizable()
                    .frame(width: 80,height: 80)
                    .scaledToFit()
                    .padding(15)
                // This is the Spartito
                HStack{
                    Text("hint:")
                    //Afficher chaque elements de la partition
                    Grid(alignment:.topLeading, horizontalSpacing: 13) {
                        GridRow {
                            ForEach(0..<8){ emo in
                                Image(getEmotionName(theEmotion:  getSpartito(theEmotion: theEmotionToPlay).aPlay[emo].emotionTitle))
                                    .resizable()
                                    .frame(width: 25,height: 25)
                                    .scaledToFit()
                            }
                        }
                        Divider()
                            .gridCellUnsizedAxes(.horizontal)
                        GridRow {
                            ForEach(8..<16){ emo in
                                Image(getEmotionName(theEmotion:  getSpartito(theEmotion: theEmotionToPlay).aPlay[emo].emotionTitle))
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
        OnePlayerGameView(theEmotionToPlay: angry)
    }
}
