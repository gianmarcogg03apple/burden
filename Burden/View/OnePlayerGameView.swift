//
//  OnePlayerGameView.swift
//  Burden
//
//  Created by Sarah Ndenbe on 20/10/22.
//

import SwiftUI
import CoreHaptics
import Foundation

@MainActor class TheScore : ObservableObject {
    @Published var gameScore : Int
    @Published var highScore : Int
    @Published var needUpdate : Bool
    @Published var scoreToDisplay : String
    
    func updateTheHighScore(){
        //update score and highscore to finish
        gameScore = getScore(theScore: scoreToDisplay )
        scoreToDisplay = displayScore(theScore: gameScore)
        if (highScore >= 0 && highScore < 17){
            if (highScore >= gameScore){
                highScore = highScore + 1 - 1
            }else{
                highScore += 1
            }
        }
        
    }
    init(){
        gameScore = 0
        highScore = 0
        needUpdate = false
        scoreToDisplay = "Score0"
    }
}



struct OnePlayerGameView: View {
    
    
    @StateObject var currentScore = TheScore()
    var theEmotionToPlay : Emotion
    var body: some View {
        NavigationView {
            
            ZStack{
                VStack{
                    Header(theEmotionToPlay: theEmotionToPlay).ignoresSafeArea(.container)
                    if(currentScore.highScore < 2){
                        
                        Instructions()
                    }else if (currentScore.highScore == 2){

                        Text("You got it ! Continue")
                            Instructions()
                                .opacity(0)
                        
                    }else if(currentScore.highScore == 16 && currentScore.scoreToDisplay == "Score16"){
                        
                        Text("You earned a reward!")
                        Instructions()
                            .opacity(0)
                        
                    }else{
                        Instructions()
                            .opacity(0)
                    }
                    ZStack{
                        Playground(theEmotionToPlay: theEmotionToPlay)
                        
                    }
                }
            }.navigationTitle("One Player Game").toolbar(.hidden, for: .navigationBar)
            
        }.navigationBarBackButtonHidden()
            .environmentObject(currentScore)
    }
}

// This is the header of the game
struct Header: View{
    var theEmotionToPlay : Emotion
    @EnvironmentObject var score : TheScore
    @State var shapeIsOnPlayground : Bool = false
    
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color("BackgroundColorHeader"))
                .frame(height: 350)
                .shadow(radius: 1)
            
            VStack{
                HStack{
                    Text("high score: \(score.highScore)").opacity(0.6)
                    Spacer()
                    NavigationLink {
                        Sett()
                    } label: {
                        Image(systemName: "pause.fill")
                            .font(.title2)
                            .foregroundColor(.black)
                    }
                    
                }.padding()
                // This is the score to update
                Image(score.scoreToDisplay)
                    .resizable()
                    .frame(width: 120,height: 120)
                    .scaledToFill()
                    .padding(5)
                
                // This is the Spartito
                HStack{
                    Text("hint:")
                    //Afficher chaque elements de la partition
                    Grid(alignment:.topLeading, horizontalSpacing: 13) {
                        // var opacityEmotionToPlay : Double  = getSpartito(theEmotion: theEmotionToPlay).aPlay[emo].emotionShape.shapeOpacity
                        GridRow {
                            ForEach(0..<8){ emo in
                                VStack{
                                    //getEmotionToPlay(theEmotionTitle: getEmotionName(theEmotion: getSpartito(theEmotion: theEmotionToPlay).aPlay[emo].emotionTitle)).emotionShape.shapeOpacity
                                    /*
                                     Text("\(getSpartito(theEmotion: theEmotionToPlay).aPlay[emo].colorName)").font(.caption2)
                                     Text("\(String(getSpartito(theEmotion: theEmotionToPlay).aPlay[emo].emotionShape.isVisible))").font(.caption2)
                                     Text("\((getSpartito(theEmotion:theEmotionToPlay).setHintOpacityEmotionShape())[emo].emotionShape.shapeOpacity)").font(.caption2)
                                     */
                                    Image(getEmotionName(theEmotion:  getSpartito(theEmotion: theEmotionToPlay).aPlay[emo].emotionTitle))
                                        .resizable()
                                        .frame(width: 25,height: 25)
                                        .scaledToFit()
                                        .opacity(getSpartito(theEmotion: theEmotionToPlay).aPlay[emo].emotionShape.shapeOpacity)
                                }
                                
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
                                    .opacity(getSpartito(theEmotion: theEmotionToPlay).aPlay[emo].emotionShape.shapeOpacity)
                            }
                        }
                    }
                }
            }.padding(.horizontal)
        }.environmentObject(score)
        
    }
}

// This is the playground where the game updates
struct Playground: View {
    @State private var engine : CHHapticEngine?
    @EnvironmentObject var score : TheScore
    @State var scale = 1.0
    @State var isPressed = false
    var theEmotionToPlay : Emotion
    
    let columns : [GridItem] = [
        GridItem(.flexible(), spacing: 5,alignment: nil),
        GridItem(.flexible(), spacing: 5,alignment: nil),
        GridItem(.flexible(), spacing: 5,alignment: nil),
        GridItem(.flexible(), spacing: 5,alignment: nil),
        GridItem(.flexible(), spacing: 5,alignment: nil),
        GridItem(.flexible(), spacing: 5,alignment: nil),
        GridItem(.flexible(), spacing: 5,alignment: nil)
    ]
    var body: some View{
        
        ZStack{
            let theSpartito = getSpartito(theEmotion: theEmotionToPlay)
            let itBe = getSpartitoEmotionsOnPlayground(theSpartitoToShuffle: theSpartito)
                .aPlay
            
            
            LazyVGrid(columns: columns) {
                ForEach(0..<69) { nemo in
                    
                    ExtractedView(itBe: itBe, nemo: nemo, updateHighScore: updateHighScore, prepareHaptics: prepareHaptics, playEmotionHapticsFile: playEmotionHapticsFile(_:)).zIndex(Double(70-nemo)) // reverse overlap
                    
                    
                    
                }
            }
            
            if(score.highScore == 16){
                
                // show rewardview
                
                
            }
            
        }
    }
    
    
    /* HIGH SCORE UPDATE */
    func updateHighScore(){
        //update score and highscore to finish
        score.gameScore = getScore(theScore: score.scoreToDisplay )
        score.scoreToDisplay = displayScore(theScore: score.gameScore)
        if (score.highScore >= 0 && score.highScore < 17){
            if (score.highScore >= score.gameScore){
                score.highScore = score.highScore
            }else{
                score.highScore += 1
            }
        }
        
    }
    
    
    
    /* HAPTIC TOOLBOX */
    func prepareHaptics(){
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else {return}
        
        do{
            engine = try CHHapticEngine()
            try engine?.start()
        }catch let error{
            print("\(error)")
        }
    }
    
    func playEmotionHapticsFile(_ theEmotionName : String){
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else {return}
        
        do{
            let pattern = createPatternFromAHAP(theEmotionName)
            let player = try engine?.makePlayer(with: pattern!)
            try player?.start(atTime: 0)
        }catch let error{
            print("\(error)")
        }
    }
    
    func createPatternFromAHAP(_ filename: String) -> CHHapticPattern? {
        // Get the URL for the pattern in the app bundle.
        let patternURL = Bundle.main.url(forResource: filename, withExtension: "ahap")!
        
        do {
            // Read JSON data from the URL.
            let patternJSONData = try Data(contentsOf: patternURL, options: [])
            
            // Create a dictionary from the JSON data.
            let dict = try JSONSerialization.jsonObject(with: patternJSONData, options: [])
            
            if let patternDict = dict as? [CHHapticPattern.Key: Any] {
                // Create a pattern from the dictionary.
                return try CHHapticPattern(dictionary: patternDict)
            }
        } catch let error {
            print("Error creating haptic pattern: \(error)")
        }
        return nil
    }
    
    
    
    
    /* SCORE SET */
    func setScore() -> String{
        switch score.gameScore{
        case 0 :
            self.score.gameScore += 1
            return displayScore(theScore: score.gameScore)
        case 1 :
            self.score.gameScore += 1
            return displayScore(theScore: score.gameScore)
        case 2 :
            self.score.gameScore += 1
            return displayScore(theScore: score.gameScore)
        case 3 :
            self.score.gameScore += 1
            return displayScore(theScore: score.gameScore)
        case 4 :
            self.score.gameScore += 1
            return displayScore(theScore: score.gameScore)
        case 5 :
            self.score.gameScore += 1
            return displayScore(theScore: score.gameScore)
        case 6 :
            self.score.gameScore += 1
            return displayScore(theScore: score.gameScore)
        case 7 :
            self.score.gameScore += 1
            return displayScore(theScore: score.gameScore)
        case 8 :
            self.score.gameScore += 1
            return displayScore(theScore: score.gameScore)
        case 9 :
            self.score.gameScore += 1
            return displayScore(theScore: score.gameScore)
        case 10 :
            self.score.gameScore += 1
            return displayScore(theScore: score.gameScore)
        case 11 :
            self.score.gameScore += 1
            return displayScore(theScore: score.gameScore)
        case 12 :
            self.score.gameScore += 1
            return displayScore(theScore: score.gameScore)
        case 13 :
            self.score.gameScore += 1
            return displayScore(theScore: score.gameScore)
        case 14 :
            self.score.gameScore += 1
            return displayScore(theScore: score.gameScore)
        case 15 :
            self.score.gameScore += 1
            return displayScore(theScore: score.gameScore)
        case 16 :
            self.score.gameScore = score.gameScore
            return displayScore(theScore: score.gameScore)
        default :
            self.score.gameScore = 0
            return displayScore(theScore: score.gameScore)
        }
    }
    
    
    
    
}

// Instruction that appear the first time you play the game
struct Instructions: View{
    var body: some View{
        ZStack{
            VStack{
                Text("Tap the shapes in the order given by the hint")
                    .fontWeight(.semibold)
                    .shadow(color: .white,radius: 5)
                //.font(.headline.smallCaps())
                Spacer()
            }
        }
    }
}

// Settings of the game
struct Sett: View{
    var body: some View{
        ZStack{
            Color.clear
            Color("BackgroundColorHeader")
                .frame(width: 400,height: 600)
            VStack{
                Text("PAUSE")
                    .multilineTextAlignment(.center)
                    .font(.title)
                
                Spacer()
                NavigationLink {
                    PlayerModeView().navigationBarBackButtonHidden()
                } label: {
                    Text("Go back to PlayerMode")
                }
                
                Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                    Text("Vibrations")
                }
                Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                    Text("Sound")
                }
                Spacer()
                
            }.padding(50)
        }
    }
}



struct OnePlayerGameView_Previews: PreviewProvider {
    static var previews: some View {
        OnePlayerGameView(theEmotionToPlay: angry)
            .environmentObject(TheScore())
        
    }
}



struct ExtractedView: View {
    
    @EnvironmentObject var score : TheScore
    @State var scaleLarge = false
    @State var scaleMedium = false
    @State var scaleSmall = false
    @State var isPressed = false
    
    @State var itBe: [Emotion]
    let nemo: Int
    let updateHighScore: () -> Void
    let prepareHaptics: () -> Void
    let playEmotionHapticsFile: (_ theEmotionName : (String)) -> Void
    
    var body: some View {
        
        HStack {
            if(itBe[nemo].emotionTitle != .Blank)
            {
                Button {
                    
                    itBe[nemo].emotionShape.isTouched = true
                    score.updateTheHighScore()
                    prepareHaptics()
                    playEmotionHapticsFile(itBe[nemo].emotionShape.shapePictureName)
                    
                    
                } label: {
                    Capsule()
                        .opacity(0)
                        .frame(height: 30)
                        .overlay {
                            ZStack{
                                
                                let theCirclesColor = itBe[nemo].emotionShape.shapeColor
                                
                                
                                
                                ZStack{
                                    Image("Large\(theCirclesColor)")
                                        .resizable()
                                        .opacity(0.5)
                                        .frame(width: 120, height: 120, alignment: .center)
                                        .onAppear(){
                                            withAnimation(.easeInOut(duration: itBe[nemo].emotionShape.shapeBreathing).delay(0.5).repeatForever(autoreverses: true)){
                                                scaleMedium.toggle()}
                                        }
                                    Image("Medium\(theCirclesColor)")
                                        .resizable()
                                        .opacity(0.3)
                                        .frame(width: 95, height: 95, alignment: .center)
                                    
                                    Image("Small\(theCirclesColor)")
                                        .resizable()
                                        .opacity(0.6)
                                        .frame(width: 70, height: 70, alignment: .center)
                                    
                                    Image("Tiny\(theCirclesColor)")
                                        .resizable()
                                        .opacity(0.9)
                                        .frame(width: 45, height: 45, alignment: .center)
                                    
                                }
                                .scaleEffect(scaleMedium ? 1.3 : 0)
                                
                                
                                Image(itBe[nemo].emotionShape.shapePictureName)
                                    .resizable()
                                    .frame(width: 35,height: 35)
                                    .scaledToFit()
                                
                            }
                            
                        }
                    
                }
            }
        }.environmentObject(score)
        
    }
    
    
}
