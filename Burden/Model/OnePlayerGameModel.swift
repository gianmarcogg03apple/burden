//
//  OnePlayerGameModel.swift
//  Burden
//
//  Created by Sarah Ndenbe on 20/10/22.
//

import Foundation

struct OnePlayerGame{
    var highScore: Int
    var ongoingScore: Int
    var spartito: Spartito
    var isOnAir: Bool
    
}

struct Spartito {
    var aPlay : [EmotionShape]
}

struct Emotion {
    var spartito: Spartito
    var colorName: String
    var emotionTitle: EmotionName
}

struct EmotionShape {
    var shapePictureName: String
    var shapeSound: String
    var shapeVibration: String
    var isTouched: Bool
    var isVisible: Bool
    var positionOnThePlayground: Int
}

enum EmotionName {
    case Sad,Shocked,Anxious,Strong,Happy,Worried,Angry,Disgusted,Remorse,Disapointed,Afraid,Submission,Loved,Optimistic,Aggressiveness,Contempt
    
}
