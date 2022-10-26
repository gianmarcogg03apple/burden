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
  //  var positionOnThePlayground: (Int,Int)
}

struct PlaygroundGrid {
    var aGrid: [(Int,Int)]
}

enum RadiantCircle {
    case Tiny,Small,Medium,Large
}

enum EmotionName : CaseIterable {
    case Sad,Shocked,Anxious,Powerful,Happy,Worried,Angry,Disgusted,Remorse,Disapointed,Afraid,Submission,Loved,Optimistic,Aggressiveness,Contempt
    
}

var randEmotion = EmotionName.AllCases().randomElement()


enum ShapeColor {
    case Purple,Blue,DarkGreen,Green,LightGreen,Yellow,Orange,Pink
}


// DataSet of Emotions
var Sad = Emotion(colorName: "Sad", emotionTitle: .Sad, emotionShape: EmotionShape(shapePictureName: "Sad", shapeColor: .Blue, shapeSound: "nil", shapeVibration: "nil", isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var Powerful = Emotion(colorName: "Powerful", emotionTitle: .Powerful, emotionShape: EmotionShape(shapePictureName: "Powerful", shapeColor: .LightGreen, shapeSound: "nil", shapeVibration: "nil", isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var Remorse = Emotion(colorName: "Remorse", emotionTitle: .Remorse, emotionShape: EmotionShape(shapePictureName: "Remorse", shapeColor: .Purple, shapeSound: "nil", shapeVibration: "nil", isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var Disapointed = Emotion(colorName: "Disapointed", emotionTitle: .Disapointed, emotionShape: EmotionShape(shapePictureName: "Disapointed", shapeColor: .Blue, shapeSound: "nil", shapeVibration: "nil", isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var Optimistic = Emotion(colorName: "Optimistic", emotionTitle: .Optimistic, emotionShape: EmotionShape(shapePictureName: "Optimistic", shapeColor: .Orange, shapeSound: "nil", shapeVibration: "nil", isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var Happy = Emotion(colorName: "Happy", emotionTitle: .Happy, emotionShape: EmotionShape(shapePictureName: "Happy", shapeColor: .Yellow, shapeSound: "nil", shapeVibration: "nil", isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var Loved = Emotion(colorName: "Loved", emotionTitle: .Loved, emotionShape: EmotionShape(shapePictureName: "Loved", shapeColor: .Yellow, shapeSound: "nil", shapeVibration: "nil", isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var Shocked = Emotion(colorName: "Shocked", emotionTitle: .Shocked, emotionShape: EmotionShape(shapePictureName: "Loved", shapeColor: .DarkGreen, shapeSound: "nil", shapeVibration: "nil", isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var Afraid = Emotion(colorName: "Afraid", emotionTitle: .Afraid, emotionShape: EmotionShape(shapePictureName: "Afraid", shapeColor: .Green, shapeSound: "nil", shapeVibration: "nil", isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var Aggressiveness = Emotion(colorName: "Aggressiveness", emotionTitle: .Aggressiveness, emotionShape: EmotionShape(shapePictureName: "Aggressiveness", shapeColor: .Pink, shapeSound: "nil", shapeVibration: "nil", isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var Angry = Emotion(colorName: "Angry", emotionTitle: .Angry, emotionShape: EmotionShape(shapePictureName: "Angry", shapeColor: .Pink, shapeSound: "nil", shapeVibration: "nil", isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var Anxious = Emotion(colorName: "Anxious", emotionTitle: .Anxious, emotionShape: EmotionShape(shapePictureName: "Anxious", shapeColor: .Green, shapeSound: "nil", shapeVibration: "nil", isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var Contempt = Emotion(colorName: "Contempt", emotionTitle: .Contempt, emotionShape: EmotionShape(shapePictureName: "Contempt", shapeColor: .Purple, shapeSound: "nil", shapeVibration: "nil", isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var Disgusted = Emotion(colorName: "Disgusted", emotionTitle: .Disgusted, emotionShape: EmotionShape(shapePictureName: "Disgusted", shapeColor: .Purple, shapeSound: "nil", shapeVibration: "nil", isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var Submission = Emotion(colorName: "Submission", emotionTitle: .Submission, emotionShape: EmotionShape(shapePictureName: "Submission", shapeColor: .LightGreen, shapeSound: "nil", shapeVibration: "nil", isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
var Worried = Emotion(colorName: "Worried", emotionTitle: .Worried, emotionShape: EmotionShape(shapePictureName: "Worried", shapeColor: .Orange, shapeSound: "nil", shapeVibration: "nil", isTouched: false, isVisible: true, isVibrating: true, isMakingMusic: true, shapeOpacity: 1, numberOfRadiantCircle: 4, radiantCirclePictureBundle: [.Large,.Medium,.Small,.Tiny]))
