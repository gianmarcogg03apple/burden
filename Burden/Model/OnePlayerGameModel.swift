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
    var aPlay : [Emotion]
}

struct Emotion {
    var colorName: String
    var emotionTitle: EmotionName
    var emotionShape: EmotionShape
}

struct EmotionShape {
    var shapePictureName: String
    var shapeColor: ShapeColor
    var shapeSound: String
    var shapeVibration: String
    var isTouched: Bool
    var isVisible: Bool
    var isVibrating: Bool
    var isMakingMusic: Bool
    var shapeOpacity: Double
    var numberOfRadiantCircle: Int
    var radiantCirclePictureBundle: [RadiantCircle]
    var positionOnThePlayground: (Int,Int)
}

struct PlaygroundGrid {
    var aGrid: [(Int,Int)]
}

enum RadiantCircle {
    case Tiny,Small,Medium,Large
}

enum EmotionName {
    case Sad,Shocked,Anxious,Strong,Happy,Worried,Angry,Disgusted,Remorse,Disapointed,Afraid,Submission,Loved,Optimistic,Aggressiveness,Contempt
    
}

enum ShapeColor {
    case Purple,Blue,DarkGreen,Green,LightGreen,Yellow,Orange,Pink
}
