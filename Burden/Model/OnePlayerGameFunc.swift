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
        return happy
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
    }
}

func getScore(theScore : Score) -> String {
    switch theScore{
    case .Zero :
        return "Score0"
    case .One :
        return "Score1"
    case .Two :
        return "Score2"
    case .Three :
        return "Score3"
    case .Four :
        return "Score4"
    case .Five :
        return "Score5"
    case .Six :
        return "Score6"
    case .Seven :
        return "Score7"
    case .Eight :
        return "Score8"
    case .Nine :
        return "Score9"
    case .Ten :
        return "Score10"
    case .Eleven :
        return "Score11"
    case .Twelve :
        return "Score12"
    case .Thirteen :
        return "Score13"
    case .Fourteen :
        return "Score14"
    case .Fifteen :
        return "Score15"
    case .Sixteen :
        return "Score16"
    }
}


func playEmotion(theEmotion : Emotion){
}

func playHapticsFile(named filename: String) {
    
}
