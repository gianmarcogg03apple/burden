//
//  OnePlayerGameFunc.swift
//  Burden
//
//  Created by Sarah Ndenbe on 26/10/22.
//

import Foundation


func getEmotionName(theEmotion : EmotionName) -> String {
    switch theEmotion {
    case .Sad :
        return "Sad"
    case .Afraid :
        return "Afraid"
    case .Aggressiveness :
        return "Aggressiveness"
    case .Angry :
        return "Angry"
    case .Anxious :
        return "Anxious"
    case .Contempt :
        return "Contempt"
    case .Disapointed :
        return "Disapointed"
    case .Happy :
        return "Happy"
    case .Loved :
        return "Loved"
    case .Optimistic :
        return "Optimistic"
    case .Remorse :
        return "Remorse"
    case .Warned :
        return "Warned"
    case .Submission :
        return "Submission"
    case .Impatient :
        return "Impatient"
    case .Powerful :
        return "Powerful"
    case .Worried :
        return "Worried"
    case .Neutral :
        return "Neutral"
    case .Blank :
        return "Blank"
    }
}

func getEmotionToPlay (theEmotionTitle : String) -> Emotion{
    switch theEmotionTitle {
    case "Sad" :
        return sad
    case "Afraid" :
        return afraid
    case "Aggressiveness" :
        return aggressiveness
    case "Angry" :
        return angry
    case "Anxious" :
        return anxious
    case "Contempt" :
        return contempt
    case "Disapointed" :
        return disapointed
    case "Happy" :
        return happy
    case "Loved" :
        return loved
    case "Optimistic" :
        return optimistic
    case "Remorse" :
        return remorse
    case "Warned" :
        return warned
    case "Submission" :
        return submission
    case "Impatient" :
        return impatient
    case "Powerful" :
        return powerful
    case "Worried" :
        return worried
    default :
        return neutral
    }
}

func getSpartito(theEmotion : Emotion) -> Spartito {
    switch theEmotion.emotionTitle {
    case .Sad :
        return Spartito(aPlay: [sad,powerful,remorse,disapointed,optimistic,optimistic,happy,loved,sad,powerful,warned,impatient,optimistic,optimistic,happy,optimistic])
    case .Afraid :
        return Spartito(aPlay:[afraid])
    case .Aggressiveness :
        return Spartito(aPlay:[aggressiveness])
    case .Angry :
        return Spartito(aPlay:[angry,contempt,afraid,optimistic,warned,powerful,warned,optimistic,afraid,angry,happy,loved,optimistic,disapointed,remorse,loved,happy])
    case .Anxious :
        return Spartito(aPlay:[anxious,submission,powerful,optimistic,anxious,anxious,powerful,happy,optimistic,anxious,happy,disapointed,optimistic,powerful,remorse,loved,happy])
    case .Contempt :
        return Spartito(aPlay:[contempt])
    case .Disapointed :
        return Spartito(aPlay:[disapointed])
    case .Happy :
        return Spartito(aPlay:[happy,submission,powerful,optimistic,anxious,anxious,powerful,happy,optimistic,anxious,happy,disapointed,optimistic,powerful,remorse,loved,happy])
    case .Loved :
        return Spartito(aPlay:[loved])
    case .Optimistic :
        return Spartito(aPlay:[optimistic])
    case .Remorse :
        return Spartito(aPlay:[remorse])
    case .Warned :
        return Spartito(aPlay:[warned,submission,powerful,optimistic,anxious,anxious,powerful,happy,optimistic,anxious,happy,disapointed,optimistic,powerful,remorse,loved,happy])
    case .Submission :
        return Spartito(aPlay:[submission])
    case .Impatient :
        return Spartito(aPlay:[impatient,submission,powerful,optimistic,anxious,anxious,powerful,happy,optimistic,anxious,happy,disapointed,optimistic,powerful,remorse,loved,happy])
    case .Powerful :
        return Spartito(aPlay:[powerful,submission,powerful,optimistic,anxious,anxious,powerful,happy,optimistic,anxious,happy,disapointed,optimistic,powerful,remorse,loved,happy])
    case .Worried :
        return Spartito(aPlay:[worried,submission,powerful,optimistic,anxious,anxious,powerful,happy,optimistic,anxious,happy,disapointed,optimistic,powerful,remorse,loved,happy])
    case .Neutral :
        return Spartito(aPlay: [loved,loved,loved,loved,loved,loved,loved,loved,loved,loved,loved,loved,loved,loved,loved,loved])
    case .Blank :
        return Spartito(aPlay: [blankEmo])
    }
}

func displayScore(theScore : Int) -> String {
    switch theScore{
    case 0 :
        return "Score0"
    case 1 :
        return "Score1"
    case 2 :
        return "Score2"
    case 3 :
        return "Score3"
    case 4 :
        return "Score4"
    case 5 :
        return "Score5"
    case 6 :
        return "Score6"
    case 7 :
        return "Score7"
    case 8 :
        return "Score8"
    case 9 :
        return "Score9"
    case 10 :
        return "Score10"
    case 11 :
        return "Score11"
    case 12 :
        return "Score12"
    case 13 :
        return "Score13"
    case 14 :
        return "Score14"
    case 15 :
        return "Score15"
    case 16 :
        return "Score16"
    default :
        return "Score0"
    }
}

func getScore(theScore : String) -> Int {
    var scoreToUpdate : Int
    switch theScore{
    case "Score0" :
        scoreToUpdate = 1
        return scoreToUpdate
    case "Score1" :
        scoreToUpdate = 2
        return scoreToUpdate
    case "Score2" :
        scoreToUpdate = 3
        return scoreToUpdate
    case "Score3" :
        scoreToUpdate = 4
        return scoreToUpdate
    case "Score4" :
        scoreToUpdate = 5
        return scoreToUpdate
    case "Score5" :
        scoreToUpdate = 6
        return scoreToUpdate
    case "Score6" :
        scoreToUpdate = 7
        return scoreToUpdate
    case "Score7" :
        scoreToUpdate = 8
        return scoreToUpdate
    case "Score8" :
        scoreToUpdate = 9
        return scoreToUpdate
    case "Score9" :
        scoreToUpdate = 10
        return scoreToUpdate
    case "Score10" :
        scoreToUpdate = 11
        return scoreToUpdate
    case "Score11" :
        scoreToUpdate = 12
        return scoreToUpdate
    case "Score12" :
        scoreToUpdate = 13
        return scoreToUpdate
    case "Score13" :
        scoreToUpdate = 14
        return scoreToUpdate
    case "Score14" :
        scoreToUpdate = 15
        return scoreToUpdate
    case "Score15" :
        scoreToUpdate = 16
        return scoreToUpdate
    case "Score16" :
        scoreToUpdate = 0
        return scoreToUpdate
    default :
        scoreToUpdate = -1
        return 0
    }
}
/*
@MainActor func updateScore(score : TheScore){
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
 */



func checkShapeIsTouched (theEmotionShape : EmotionShape?) -> Bool{
    theEmotionShape?.isTouched == true ? true : false
}

func checkShapeIsVisible (theEmotionShape : EmotionShape?) -> Bool{
    theEmotionShape?.isVisible == true ? true : false
}

func getSpartitoEmotionsOnPlayground (theSpartitoToShuffle : Spartito) -> Spartito {
    var theNotSoVoidPlayground : Spartito = Spartito(aPlay: [Emotion](repeating: blankEmo, count: 53))
    for emo in theSpartitoToShuffle.aPlay {
        theNotSoVoidPlayground.aPlay.append(emo)
    }
    theNotSoVoidPlayground.aPlay.shuffle()
    theNotSoVoidPlayground.aPlay.shuffle()
    theNotSoVoidPlayground.aPlay.shuffle()
    
    return theNotSoVoidPlayground
}
