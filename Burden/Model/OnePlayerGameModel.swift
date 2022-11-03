//
//  OnePlayerGameModel.swift
//  Burden
//
//  Created by Sarah Ndenbe on 20/10/22.
//

import Foundation
import CoreHaptics
import SwiftUI

struct OnePlayerGame{
    var highScore: Int
    var ongoingScore: Int
    var spartito: Spartito
    var isOnAir: Bool
    
}

struct Spartito: Identifiable {
    var id = UUID()
    var aPlay : [Emotion]
    
    init(id: UUID = UUID(), aPlay: [Emotion]) {
        self.id = id
       
        for var emo in aPlay {
            
            emo.emotionShape.isVisible = false
        }
        self.aPlay = aPlay
    }
    
    func setHintOpacityEmotionShape() -> [Emotion] {
        for var emo in self.aPlay {
            if checkShapeIsVisible(theEmotionShape: emo.emotionShape){
                if checkShapeIsTouched(theEmotionShape: emo.emotionShape){
                    emo.emotionShape.shapeOpacity = 9.0
                } else {
                    emo.emotionShape.shapeOpacity = 0.1
                }
            }
        }
        return aPlay
    }
}

struct Emotion {
    var id = UUID()
    var colorName: String
    var emotionTitle: EmotionName
    var emotionShape: EmotionShape
}

struct EmotionShape {
    var shapePictureName: String
    var shapeColor: ShapeColor
    var shapeSound: String
    var shapeBreathing: Double
    var isTouched: Bool
    var isVisible: Bool
    var isVibrating: Bool
    var isMakingMusic: Bool
    var shapeOpacity: Double
    var numberOfRadiantCircle: Int
    var radiantCirclePictureBundle: [RadiantCircle]
  //  var positionOnThePlayground: (Int,Int)
}

struct PlaygroundGrid {
    var aGrid: [(Int,Int)]
}

enum RadiantCircle {
    case Tiny,Small,Medium,Large
}

enum EmotionName : CaseIterable {
    case Sad,Warned,Anxious,Powerful,Happy,Worried,Angry,Impatient,Remorse,Disapointed,Afraid,Submission,Loved,Optimistic,Aggressiveness,Contempt,Neutral,Blank
    
}

var randEmotion = EmotionName.AllCases().randomElement()


enum ShapeColor {
    case Purple,Blue,DarkGreen,Green,LightGreen,Yellow,Orange,Pink,Blank
}


enum Score {
    case Zero,One,Two,Three,Four,Five,Six,Seven,Eight,Nine,Ten,Eleven,Twelve,Thirteen,Fourteen,Fifteen,Sixteen
}




// DataSet of Emotions
 var sad = Emotion(colorName: "Sad", emotionTitle: .Sad, emotionShape: EmotionShape(shapePictureName: "Sad", shapeColor: .Blue, shapeSound: "nil", shapeBreathing: 7, isTouched: false, isVisible: true, isVibrating: false, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var powerful = Emotion(colorName: "Powerful", emotionTitle: .Powerful, emotionShape: EmotionShape(shapePictureName: "Powerful", shapeColor: .LightGreen, shapeSound: "nil", shapeBreathing: 3.5, isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var remorse = Emotion(colorName: "Remorse", emotionTitle: .Remorse, emotionShape: EmotionShape(shapePictureName: "Remorse", shapeColor: .Purple, shapeSound: "nil", shapeBreathing: 8.5, isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var disapointed = Emotion(colorName: "Disapointed", emotionTitle: .Disapointed, emotionShape: EmotionShape(shapePictureName: "Disapointed", shapeColor: .Blue, shapeSound: "nil", shapeBreathing: 5.5, isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var optimistic = Emotion(colorName: "Optimistic", emotionTitle: .Optimistic, emotionShape: EmotionShape(shapePictureName: "Optimistic", shapeColor: .Orange, shapeSound: "nil", shapeBreathing: 4.5 ,isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var happy = Emotion(colorName: "Happy", emotionTitle: .Happy, emotionShape: EmotionShape(shapePictureName: "Happy", shapeColor: .Yellow, shapeSound: "nil", shapeBreathing: 4, isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var loved = Emotion(colorName: "Loved", emotionTitle: .Loved, emotionShape: EmotionShape(shapePictureName: "Loved", shapeColor: .Yellow, shapeSound: "nil", shapeBreathing:3, isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var warned = Emotion(colorName: "Warned", emotionTitle: .Warned, emotionShape: EmotionShape(shapePictureName: "Warned", shapeColor: .DarkGreen, shapeSound: "nil", shapeBreathing: 1, isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var afraid = Emotion(colorName: "Afraid", emotionTitle: .Afraid, emotionShape: EmotionShape(shapePictureName: "Afraid", shapeColor: .Green, shapeSound: "nil", shapeBreathing: 0.7, isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var aggressiveness = Emotion(colorName: "Aggressiveness", emotionTitle: .Aggressiveness, emotionShape: EmotionShape(shapePictureName: "Aggressiveness", shapeColor: .Pink, shapeSound: "nil", shapeBreathing: 0.3, isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var angry = Emotion(colorName: "Angry", emotionTitle: .Angry, emotionShape: EmotionShape(shapePictureName: "Angry", shapeColor: .Pink, shapeSound: "nil", shapeBreathing: 1, isTouched: false, isVisible: false, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var anxious = Emotion(colorName: "Anxious", emotionTitle: .Anxious, emotionShape: EmotionShape(shapePictureName: "Anxious", shapeColor: .Green, shapeSound: "nil", shapeBreathing: 0.5, isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var contempt = Emotion(colorName: "Contempt", emotionTitle: .Contempt, emotionShape: EmotionShape(shapePictureName: "Contempt", shapeColor: .Purple, shapeSound: "nil", shapeBreathing: 3, isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var impatient = Emotion(colorName: "Impatient", emotionTitle: .Impatient, emotionShape: EmotionShape(shapePictureName: "Impatient", shapeColor: .Purple, shapeSound: "nil", shapeBreathing: 0.1 , isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var submission = Emotion(colorName: "Submission", emotionTitle: .Submission, emotionShape: EmotionShape(shapePictureName: "Submission", shapeColor: .LightGreen, shapeSound: "nil", shapeBreathing: 8, isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var worried = Emotion(colorName: "Worried", emotionTitle: .Worried, emotionShape: EmotionShape(shapePictureName: "Worried", shapeColor: .Orange, shapeSound: "nil", shapeBreathing: 2, isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var neutral = Emotion(colorName: "Worried", emotionTitle: .Neutral, emotionShape: EmotionShape(shapePictureName: "Loved", shapeColor: .Yellow, shapeSound: "nil", shapeBreathing: 3, isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var blankEmo = Emotion(colorName: "Blank", emotionTitle: .Blank, emotionShape: EmotionShape(shapePictureName: "Blank", shapeColor: .Blank, shapeSound: "nil", shapeBreathing: 1, isTouched: false, isVisible: true, isVibrating: false, isMakingMusic: false, shapeOpacity: 0, numberOfRadiantCircle: 0, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))


// Haptics Dataset

let ahapFiles = [
    "AHAP/Hit",
    "AHAP/Hit",
    "AHAP/Hit",
    "AHAP/Hit",
    "AHAP/Triple",
    "AHAP/Rumble",
    "AHAP/Recharge",
    "AHAP/Heartbeats"
]

